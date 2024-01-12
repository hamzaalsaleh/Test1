import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class LangPage extends StatefulWidget {
  const LangPage({super.key});

  @override
  State<LangPage> createState() => _LangPageState();
}

String? lang = "English";

List<Map> currentlang = [
  {1: "English"},
  {2: "عربي"}
];
List<Image> imag = [
  Image.asset(AppStrings.america),
  Image.asset(AppStrings.egy),
];

class _LangPageState extends State<LangPage> {
  bool isactive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.yGreyColor)),
        title: const MainText.title("لغة التطبيق"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...currentlang.map((item) {
            final value = item.keys.first;
            final label = item.values.first;

            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: RadioListTile(
                  value: value.toString(),
                  title: Row(
                    children: [
                      Text(label),
                      Spacer(),
                      label == "English" ? imag.first : imag.last
                    ],
                  ),
                  groupValue: lang,
                  onChanged: (val) {
                    setState(() {
                      lang = val;
                    });
                  }),
            );
          }),
        ],
      ),
    );
  }
}
