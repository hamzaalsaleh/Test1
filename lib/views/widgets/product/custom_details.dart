import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainText.body(
            "التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم التقييم... قراءة المزيد"),
        const Spacer(),
        MainButton(
            color: AppColors.yblueColor,
            onPressed: () {},
            child: const MainText.subHeading(
              "طلب الخدمة",
              color: AppColors.yWhiteColor,
            )),
      ],
    );
  }
}
