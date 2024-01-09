import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/providers/x_provider.dart';
import 'package:almotamayez/views/pages/product/product.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/product/slid.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/product/custom_details.dart';
import 'package:almotamayez/views/widgets/product/custom_quastion.dart';

import 'package:flutter/material.dart';

import '../../../core/constants/app_routes.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 300,
          decoration: BoxDecoration(
              borderRadius: 8.cBorder,
              border: Border.all(color: AppColors.yGreyColor)),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      AppStrings.favimage,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        right: 5,
                        top: 10,
                        child: CircleAvatar(
                          backgroundColor: AppColors.yWhiteColor,
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: AppColors.yRedColor,
                            ),
                            onPressed: () {},
                          ),
                        )),
                    Positioned(
                        right: 280,
                        top: 80,
                        child: Container(
                          padding: 3.aEdge,
                          decoration: BoxDecoration(
                              color: AppColors.yWhiteColor,
                              borderRadius: 20.cBorder,
                              border: Border.all(color: Colors.transparent)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MainText.title("4.5"),
                              5.wSize,
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 25,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              5.hSize,
              Container(
                padding: 10.hEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainText.title(
                      "نقل الأثاث الاثاث",
                    ),
                    5.hSize,
                    MainText.heading(
                      "الخدمات الأكثر طلباً طلبا طلباً",
                      color: AppColors.yGreyColor,
                    ),
                    5.hSize,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MainText.title("السعر"),
                        Spacer(),
                        MainText.heading(
                          "10\$",
                        )
                      ],
                    ),
                  ],
                ),
              ),
              10.hSize,
              Container(
                padding: EdgeInsets.all(10),
                child: MainButton(
                    horizontalPadding: 30,
                    onPressed: () {
                      AppRoutes.routeTo(context, Product());
                    },
                    color: AppColors.yblueColor,
                    radius: 8,
                    child: const MainText.buttonText("اطلب الآنِ")),
              )
            ],
          )),
    ));
  }
}
