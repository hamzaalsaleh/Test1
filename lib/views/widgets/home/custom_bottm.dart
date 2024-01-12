import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
    this.onpressed,
    required this.iconData,
    required this.text,
    required this.active,
  });
  final void Function()? onpressed;
  final IconData iconData;
  final String text;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      shape: RoundedRectangleBorder(
        borderRadius: 100.cBorder,
      ),
      child: Padding(
        padding: 6.vEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color:
                  active == true ? AppColors.yblueColor : AppColors.yGreyColor,
            ),
            Text(
              text,
              style: TextStyle(
                color: active == true
                    ? AppColors.yblueColor
                    : AppColors.yGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
