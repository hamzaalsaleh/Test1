import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOffers extends StatelessWidget {
  const CustomOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: 8.cBorder,
          color: AppColors.ylight,
        ),
        padding: EdgeInsets.all(10),
        height: 130,
        width: 380,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainText.heading(
                  "خصم 20 % لنقل \nالأثاث",
                  fontSize: 20,
                ),
                20.hSize,
                Container(
                  padding: 10.hEdge,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: 8.cBorder),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined,
                          size: 30, color: AppColors.ySecondryColor),
                      5.wSize,
                      const MainText.title("12 يناير 2024",
                          color: AppColors.ySecondryColor)
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 10,
              child: SvgPicture.asset(
                AppStrings.work,
              ),
            )
          ],
        ));
  }
}
