import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class CustomRowRate extends StatelessWidget {
  const CustomRowRate({
    super.key,
    required this.persent,
    required this.widthrate,
    required this.star,
  });
  final String persent;
  final double widthrate;
  final String star;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainText.title(
          persent,
          color: AppColors.yGreyColor,
        ),
        5.wSize,
        Expanded(
          flex: 4,
          child: Stack(children: [
            Container(
              height: 20,
              width: 250,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: AppColors.yLightColor),
            ),
            Positioned(
                left: 1,
                child: Container(
                    width: widthrate,
                    height: 20,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColors.yblueColor,
                    ))),
          ]),
        ),
        5.wSize,
        Expanded(
            child: MainText.title(
          star,
          color: AppColors.yGreyColor,
        )),
      ],
    );
  }
}
