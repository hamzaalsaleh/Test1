import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/pages/product/product.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_routes.dart';

class CustomOrders extends StatelessWidget {
  const CustomOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            height: 340,
            margin: 8.hEdge,
            decoration: BoxDecoration(
              borderRadius: 8.cBorder,
              border: Border.all(
                color: AppColors.yGreyColor,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppStrings.image5,
                      width: 220,
                      fit: BoxFit.fill,
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
                      right: 150,
                      top: 100,
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
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                5.hSize,
                Container(
                  padding: 10.hEdge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MainText.title("نقل الأثاث الاثاث"),
                      5.hSize,
                      const MainText.heading(
                        "الخدمات الأكثر طلباً طلباً \nطلباً طلباً",
                        color: AppColors.yGreyColor,
                      ),
                      5.hSize,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const MainText.title("السعر"),
                          120.wSize,
                          const MainText.heading(
                            "10\$",
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                15.hSize,
                MainButton(
                  verticalPadding: 10,
                  horizontalPadding: 20,
                  expanded: false,
                  onPressed: () {
                    AppRoutes.routeTo(context, const Product());
                  },
                  color: AppColors.yblueColor,
                  radius: 8,
                  child: const MainText.buttonText('اطلب الآن'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
