import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/helper/functions/show_dialog.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';

import 'package:almotamayez/views/widgets/main_button.dart';

import 'package:almotamayez/views/widgets/main_textfield.dart';
import 'package:flutter/material.dart';

import '../../widgets/main_text.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: 10.aEdge,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.yWhiteColor,
                  shape: RoundedRectangleBorder(borderRadius: 10.cBorder),
                  side: const BorderSide(color: AppColors.yGreyColor)),
              onPressed: () {
                AppRoutes.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.yGreyColor,
              )),
        ),
        title: const MainText.title("إعادة تعيين كلمة المرور"),
        centerTitle: true,
      ),
      body: ListView(
        padding: 20.hEdge,
        children: [
          Image.asset(AppStrings.resetpassword),
          const MainText.title(
            "كلمة المرور",
            textAlign: TextAlign.start,
          ),
          10.hSize,
          MainTextField(
            borderColor: Colors.transparent,
            focusecolor: Colors.transparent,
            filledColor: AppColors.ytranspare,
            border: OutlineInputBorder(borderRadius: 10.cBorder),
            prefixIcon: const Icon(
              Icons.lock_open_outlined,
              color: AppColors.yblueColor,
              size: 24,
            ),
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.yblueColor,
              size: 24,
            ),
          ),
          10.hSize,
          const MainText.title(
            "تأكيد كلمة المرور",
            textAlign: TextAlign.start,
          ),
          10.hSize,
          MainTextField(
            borderColor: Colors.transparent,
            focusecolor: Colors.transparent,
            filledColor: AppColors.ytranspare,
            border: OutlineInputBorder(borderRadius: 10.cBorder),
            prefixIcon: const Icon(
              Icons.lock_open_outlined,
              color: AppColors.yblueColor,
              size: 24,
            ),
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.yblueColor,
              size: 24,
            ),
          ),
          20.hSize,
          Consumer<ProfilController>(
            builder: (context, value, child) => MainButton(
              color: AppColors.yblueColor,
              onPressed: () {
                value.showdialog();
              },
              child: const Text(
                "تأكيد",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
