import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class CustomNotefication extends StatelessWidget {
  const CustomNotefication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(AppStrings.person),
        ),
        const Text("مرحبا، محمد حسن"),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 25,
              color: AppColors.yblueColor,
            ))
      ],
    );
  }
}
