import 'package:almotamayez/core/constants/app_colors.dart';

import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class CustomTitleAndMore extends StatelessWidget {
  const CustomTitleAndMore({
    super.key,
    required this.title,
    this.ontap,
    required this.head,
  });
  final String title;
  final String head;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainText.title(title),
        const Spacer(),
        InkWell(
          onTap: ontap,
          child: MainText.heading(
            head,
            color: AppColors.yblueColor,
          ),
        )
      ],
    );
  }
}
