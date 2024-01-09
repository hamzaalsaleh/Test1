import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/helper/functions/show_dialog.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/views/profile/langpage.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/profile/customcardprofil.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MainText.title("البروفايل"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(AppStrings.hamza),
                    ),
                  ),
                  Positioned(
                      right: 20, top: 80, child: Image.asset(AppStrings.edit))
                ],
              ),
              const MainText.title(
                "حمزة الصالح",
              ),
              const MainText(
                "00963 58473640",
                color: AppColors.yGreyColor,
              )
            ],
          ),
          5.hSize,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainText(
                  "الحساب",
                ),
                CustomCardProfile(
                  eleva: 5,
                  ladingicon: Icons.phone_outlined,
                  text: "تغيير رقم التلفون",
                ),
                CustomCardProfile(
                  eleva: 5,
                  ladingicon: Icons.lock_open_outlined,
                  text: "تغيير كلمة المرور",
                ),
                5.hSize,
                const MainText(
                  "التفضيلات",
                ),
                CustomCardProfile(
                  onTap: () {
                    AppRoutes.routeTo(context, LangPage());
                  },
                  ladingicon: Icons.language_outlined,
                  text: "لغة التطبيق",
                ),
                CustomCardProfile(
                  ladingicon: Icons.wb_sunny_outlined,
                  text: "مود  التطبيق",
                ),
                5.hSize,
                const MainText(
                  "السياسات والخصوصية",
                ),
                CustomCardProfile(
                  ladingicon: Icons.wb_sunny_outlined,
                  text: "تواصل بنا",
                ),
                CustomCardProfile(
                  ladingicon: Icons.description_outlined,
                  text: "شروط الخدمة",
                ),
                CustomCardProfile(
                  ladingicon: Icons.info_outline,
                  text: "حول التطبيق",
                ),
                Consumer<ProfilController>(
                  builder: (context, value, child) => GestureDetector(
                    onTap: () {
                      value.im = true;
                      value.showdialog();
                    },
                    child: const Card(
                      color: AppColors.yWhiteColor,
                      child: ListTile(
                        leading: Icon(
                          Icons.output_outlined,
                          color: AppColors.yRedColor,
                        ),
                        title: MainText("تسجيل خروج"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
