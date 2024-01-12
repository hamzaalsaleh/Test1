import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class SubServices extends StatelessWidget {
  const SubServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.yGreyColor)),
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
          title: const MainText.title("الخدمات الفرعية"),
          centerTitle: true,
        ),
        body: Container(
          padding: 15.hEdge,
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  ...List.generate(
                      4,
                      (index) => Container(
                          color: AppColors.yverylight,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 80,
                          width: 80,
                          child: Column(
                            children: [
                              Image.asset(AppStrings.image1),
                              10.hSize,
                              const MainText.heading("نقل الأثاث")
                            ],
                          )))
                ],
              ),
              40.hSize,
              Row(
                children: [
                  ...List.generate(
                      4,
                      (index) => Container(
                          color: AppColors.yverylight,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 80,
                          width: 80,
                          child: Column(
                            children: [
                              Image.asset(AppStrings.image1),
                              10.hSize,
                              const MainText.heading("نقل الأثاث")
                            ],
                          )))
                ],
              )
            ],
          ),
        ));
  }
}
