import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/product/customrowrate.dart';
import 'package:flutter/material.dart';

class CustomRate extends StatefulWidget {
  const CustomRate({super.key});

  @override
  State<CustomRate> createState() => _CustomRateState();
}

class _CustomRateState extends State<CustomRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainButton(
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 260,
              decoration: const BoxDecoration(
                  color: AppColors.yWhiteColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.hSize,
                    const MainText.title("اضافة تقييم"),
                    10.hSize,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_outline,
                          size: 40,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 40,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 40,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 40,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 40,
                        )
                      ],
                    ),
                    const Divider(
                      height: 40,
                      color: AppColors.yGreyColor,
                    ),
                    MainButton(
                        color: AppColors.yblueColor,
                        onPressed: () {},
                        child: const MainText.buttonText("موافق")),
                    10.hSize,
                    MainButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const MainText.buttonText(
                          "رجوع",
                          color: AppColors.yblueColor,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
        color: AppColors.yblueColor,
        child: const MainText.buttonText("اضافة تقييم"),
      ),
      body: ListView(
        children: [
          10.hSize,
          const CustomRowRate(persent: '60%', star: '5 نجوم', widthrate: 200),
          10.hSize,
          const CustomRowRate(persent: '20%', star: '4 نجوم', widthrate: 80),
          10.hSize,
          const CustomRowRate(persent: '10%', star: '3 نجوم', widthrate: 40),
          10.hSize,
          const CustomRowRate(persent: '10%', star: '2 نجوم', widthrate: 40),
          10.hSize,
          const CustomRowRate(persent: '5%', star: '1 نجمة', widthrate: 25),
          10.hSize,
        ],
      ),
    );
  }
}
