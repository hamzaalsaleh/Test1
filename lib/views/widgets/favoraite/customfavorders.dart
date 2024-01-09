import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/pages/product/product.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_routes.dart';

class CustomFavOrders extends StatelessWidget {
  const CustomFavOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 400,
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
                    height: 250,
                  ),
                  Positioned(
                      right: 5,
                      top: 10,
                      child: CircleAvatar(
                        backgroundColor: AppColors.yWhiteColor,
                        child: IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            color: AppColors.yRedColor,
                          ),
                          onPressed: () {},
                        ),
                      )),
                  Positioned(
                    right: 280,
                    top: 180,
                    child: Container(
                      padding: 5.aEdge,
                      decoration: BoxDecoration(
                          color: AppColors.yWhiteColor,
                          borderRadius: 20.cBorder,
                          border: Border.all(color: Colors.transparent)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const MainText.title("4.5"),
                          5.wSize,
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            5.hSize,
            Container(
              padding: 10.hEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainText.title(
                    "نقل الأثاث الاثاث",
                  ),
                  5.hSize,
                  const MainText.heading(
                    "الخدمات الأكثر طلباً طلبا طلباً",
                    color: AppColors.yGreyColor,
                  ),
                  5.hSize,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MainText("السعر"),
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
              padding: const EdgeInsets.all(10),
              child: MainButton(
                  horizontalPadding: 20,
                  verticalPadding: 10,
                  onPressed: () {
                    AppRoutes.routeTo(context, const Product());
                  },
                  color: AppColors.yblueColor,
                  radius: 8,
                  child: const MainText.buttonText("اطلب الآنِ")),
            )
          ],
        ));
  }
}
