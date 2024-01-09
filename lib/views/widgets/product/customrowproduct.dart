import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class CustomRowProduct extends StatelessWidget {
  const CustomRowProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MainText.subHeading(
          "السعر :",
          color: AppColors.yBlackColor,
        ),
        5.wSize,
        const MainText(
          "14.4\$",
          color: AppColors.yRedColor,
        ),
        const Spacer(),
        const MainText("4.5"),
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: 8.cBorder,
                border: Border.all(color: AppColors.yGreyColor)),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: AppColors.yRedColor,
            )),
        5.wSize,
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: 8.cBorder,
                border: Border.all(color: AppColors.yGreyColor)),
            child: const Icon(Icons.share_outlined)),
      ],
    );
  }
}
