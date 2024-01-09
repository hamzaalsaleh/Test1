import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/pages/auth/reset_password.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../widgets/main_text.dart';

class VerifyPassword extends StatelessWidget {
  const VerifyPassword({super.key});

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
        title: const MainText.title("التحقق من كود "),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: 20.hEdge,
          children: [
            20.hSize,
            Image.asset(AppStrings.security),
            20.hSize,
            const MainText.title(
              "كود التحقق",
              textAlign: TextAlign.start,
            ),
            10.hSize,
            OtpTextField(
              borderRadius: BorderRadius.circular(8),
              fieldWidth: 55,
              fillColor: AppColors.yGreenColor,

              numberOfFields: 5,
              borderColor: (AppColors.yblueColor),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,

              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            10.hSize,
            Column(
              children: [
                const Text(
                  "لم تتلق رمز ؟",
                  style: TextStyle(color: AppColors.ytitlegrey),
                ),
                InkWell(
                  child: Container(
                      decoration: const BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(color: AppColors.yblueColor))),
                      child: const Text(
                        "أعد ارسال الرمز",
                        style: TextStyle(
                            color: AppColors.yblueColor,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            70.hSize,
            MainButton(
              color: AppColors.yblueColor,
              onPressed: () {
                AppRoutes.routeTo(context, const ResetPassword());
              },
              child: const Text(
                "التالي",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
