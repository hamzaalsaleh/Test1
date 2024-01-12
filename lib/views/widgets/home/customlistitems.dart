import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        4,
        (index) => Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: 50.cBorder,
                border: Border.all(),
              ),
              child: SvgPicture.asset(AppStrings.image1),
            ),
            5.hSize,
            const MainText.heading("نقل الأثاث")
          ],
        ),
      ),
    );
  }
}
