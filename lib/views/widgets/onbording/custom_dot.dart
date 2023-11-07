import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/models/onbording_model.dart';
import 'package:almotamayez/providers/onbording_controller.dart';
import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Onbordingcontroller>(
      builder: (context, value, child) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onbordinglist.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.all(2),
              duration: const Duration(
                milliseconds: 900,
              ),
              height: 6,
              width: value.currentpage == index ? 20 : 6,
              decoration: BoxDecoration(
                  color: AppColors.yblueColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
