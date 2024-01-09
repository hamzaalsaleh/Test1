import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class CustomCardProfile extends StatelessWidget {
  CustomCardProfile(
      {super.key,
      required this.text,
      required this.ladingicon,
      this.eleva,
      this.onTap});

  final String text;
  final IconData ladingicon;
  void Function()? onTap;
  double? eleva;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.5),
        child: Card(
          elevation: eleva,
          color: AppColors.yWhiteColor,
          child: ListTile(
            leading: Icon(
              ladingicon,
              color: AppColors.yblueColor,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.yblueColor,
            ),
            title: MainText(
              text,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
