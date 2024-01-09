import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';

import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/providers/x_provider.dart';
import 'package:almotamayez/views/widgets/product/customrowproduct.dart';
import 'package:almotamayez/views/widgets/product/slid.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_text.dart';

import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
        title: const MainText.title("نقل الأثاث"),
        centerTitle: true,
      ),
      body: Container(
        padding: 15.aEdge,
        child: ListView(
          children: [
            SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  AppStrings.product,
                  fit: BoxFit.fill,
                )),
            10.hSize,
            const CustomRowProduct(),
            5.hSize,
            Consumer<XProvider>(
              builder: (context, value, child) => Row(
                children: [
                  MainButton(
                    onPressed: () {
                      value.changepage(0);
                    },
                    expanded: false,
                    color: value.currentpage != 0
                        ? AppColors.yWhiteColor
                        : AppColors.yblueColor,
                    child: MainText.textButton(
                      "تفاصيل",
                      color: value.currentpage != 0
                          ? AppColors.yGreyColor
                          : AppColors.yWhiteColor,
                    ),
                  ),
                  5.wSize,
                  MainButton(
                      onPressed: () {
                        value.changepage(1);
                      },
                      color: value.currentpage != 1
                          ? AppColors.yWhiteColor
                          : AppColors.yblueColor,
                      expanded: false,
                      child: MainText.textButton(
                        "التقييم",
                        color: value.currentpage != 1
                            ? AppColors.yGreyColor
                            : AppColors.yWhiteColor,
                      )),
                  5.wSize,
                  MainButton(
                      onPressed: () {
                        value.changepage(2);
                      },
                      color: value.currentpage != 2
                          ? AppColors.yWhiteColor
                          : AppColors.yblueColor,
                      expanded: false,
                      child: MainText.textButton(
                        "الاسئلة",
                        color: value.currentpage != 2
                            ? AppColors.yGreyColor
                            : AppColors.yWhiteColor,
                      )),
                ],
              ),
            ),
            10.hSize,
            const SizedBox(
              height: 240,
              width: double.infinity,
              child: Slid(),
            )
          ],
        ),
      ),
    );
  }
}
