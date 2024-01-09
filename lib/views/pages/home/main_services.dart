import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainServices extends StatelessWidget {
  const MainServices({super.key});

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
          title: const MainText.title("العروض الخاصة"),
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
                      (index) => Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: 50.cBorder,
                                  border: Border.all(),
                                ),
                                child: SvgPicture.asset(AppStrings.image1),
                              ),
                              5.hSize,
                              const MainText.heading("نقل الأثاث")
                            ],
                          ))
                ],
              ),
              15.hSize,
              Row(
                children: [
                  ...List.generate(
                      4,
                      (index) => Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: 50.cBorder,
                                  border: Border.all(),
                                ),
                                child: Image.asset(AppStrings.image1),
                              ),
                              5.hSize,
                              const MainText.heading("نقل الأثاث")
                            ],
                          ))
                ],
              )
            ],
          ),
        ));
  }
}
