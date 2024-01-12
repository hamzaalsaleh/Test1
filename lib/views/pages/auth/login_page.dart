import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/providers/login_controller.dart';
import 'package:almotamayez/views/pages/home/home_screen.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_page.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Provider.of<LoginController>(context);
    return MainPage(
      isAppBar: false,
      body: ListView(
        padding: 20.hEdge,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              16.hSize,
              const MainText.pageTitle("تسجيل الدخول"),
              20.hSize,
              Image.asset("assets/images/logoo.png")
            ],
          ),
          10.hSize,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainText.title("رقم التلفون"),
              10.hSize,
              Container(
                decoration: BoxDecoration(
                    borderRadius: 10.cBorder, color: AppColors.ytranspare),
                child: const IntlPhoneField(
                  disableLengthCheck: true,
                  textAlign: TextAlign.start,
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
          10.hSize,
          InkWell(
            onTap: () {
              controller.gotoforgetpassword();
            },
            child: const Text(
              "نسيت كلمة المرور ؟",
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: AppColors.ytitlegrey, fontWeight: FontWeight.bold),
            ),
          ),
          80.hSize,
          MainButton(
              onPressed: () {
                AppRoutes.routeRemoveAllTo(context, const HomeScreen());
              },
              color: AppColors.yblueColor,
              radius: 8,
              child: const MainText.buttonText("تسجبل الدخول")),
          10.hSize,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ليس لديك حساب ؟",
                style: TextStyle(color: AppColors.ytitlegrey),
              ),
              InkWell(
                onTap: () {
                  controller.gotosignup();
                },
                child: Container(
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(color: AppColors.yblueColor))),
                    child: const Text(
                      "انشاء جديد",
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
