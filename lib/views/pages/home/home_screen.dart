import 'package:almotamayez/data/remote/remote_data.dart';
import 'package:almotamayez/providers/home_screen_controller.dart';
import 'package:almotamayez/views/widgets/home/custom_bottm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenController>(
      builder: (context, value, child) => Scaffold(
        body: value.listpage.elementAt(value.currentpage),
        bottomNavigationBar: BottomAppBar(
          height: 80,
          child: Row(
            children: [
              ...List.generate(value.listpage.length + 1, (index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomBottomAppBar(
                        onpressed: () {
                          value.changepage(i);
                        },
                        text: value.titlepagename[i],
                        iconData: index == 0
                            ? Icons.home
                            : index == 1
                                ? Icons.question_answer
                                : index == 3
                                    ? Icons.favorite_border_outlined
                                    : Icons.person_outline_outlined,
                        active: value.currentpage == i ? true : false,
                      );
              })
            ],
          ),
        ),
      ),
    );
  }
}
