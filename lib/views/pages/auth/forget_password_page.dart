import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/pages/auth/verify_password.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../widgets/main_text.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
        title: const MainText.title("نسيت كلمة المرور"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: 20.hEdge,
          children: [
            20.hSize,
            Image.asset(AppStrings.fogetpassword),
            20.hSize,
            const MainText.title(
              "رقم التلفون",
              textAlign: TextAlign.start,
            ),
            10.hSize,
            Container(
              decoration: BoxDecoration(
                  borderRadius: 10.cBorder, color: AppColors.ytranspare),
              child: const IntlPhoneField(
                disableLengthCheck: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            120.hSize,
            MainButton(
              color: AppColors.yblueColor,
              onPressed: () {
                AppRoutes.routeTo(context, const VerifyPassword());
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
