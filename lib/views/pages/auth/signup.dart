import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/providers/signup_controller.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_page.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/ys_localizations/ys_localizations_provider.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Provider.of<SignupController>(context);
    return MainPage(
      isAppBar: false,
      body: ListView(
        padding: 20.hEdge,
        children: [
          const MainText.pageTitle(
            "إنشاء جديد",
            textAlign: TextAlign.center,
          ),
          20.hSize,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainText.title("الاسم"),
              10.hSize,
              MainTextField(
                borderColor: Colors.transparent,
                focusecolor: Colors.transparent,
                filledColor: AppColors.ytranspare,
                border: OutlineInputBorder(borderRadius: 10.cBorder),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: AppColors.yblueColor,
                  size: 24,
                ),
              ),
              10.hSize,
              const MainText.title("رقم التلفون"),
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
              20.hSize,
              const MainText.title("كلمة المرور"),
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
              )
            ],
          ),
          80.hSize,
          MainButton(
              onPressed: () {},
              color: AppColors.yblueColor,
              radius: 8,
              child: const MainText.buttonText("إنشاء جديد")),
          10.hSize,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "لديك حساب مسبقا ؟",
                style: TextStyle(color: AppColors.ytitlegrey),
              ),
              InkWell(
                onTap: () {
                  controller.gotoLogin(context);
                },
                child: Container(
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(color: AppColors.yblueColor))),
                    child: const Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          color: AppColors.yblueColor,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
