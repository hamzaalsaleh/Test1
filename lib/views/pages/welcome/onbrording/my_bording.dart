import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/models/onbording_model.dart';
import 'package:almotamayez/providers/onbording_controller.dart';
import 'package:almotamayez/views/widgets/main_button.dart';
import 'package:almotamayez/views/widgets/onbording/custom_dot.dart';
import 'package:almotamayez/views/widgets/onbording/slider.dart';
import 'package:flutter/material.dart';

class Mybording extends StatelessWidget {
  const Mybording({super.key});

  @override
  Widget build(BuildContext context) {
    OnbordingController controller = Provider.of<OnbordingController>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: 20.hEdge,
            onPressed: () {
              controller.skip();
            },
            icon: const Text(
              "تخطي",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.ytitlegrey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: Consumer<OnbordingController>(
        builder: (context, value, child) => Container(
          padding: 16.hEdge,
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: CustomSlider(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Spacer(),
                    const IndecatorWidget(),
                    const Spacer(),
                    MainButton(
                      color: AppColors.yblueColor,
                      onPressed: () {
                        value.next();
                      },
                      child: Text(
                        value.currentpage != onbordingList.length - 1
                            ? "التالي"
                            : "لنبدأ",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    16.hSize,
                    if (value.currentpage != 0 &&
                        value.currentpage != onbordingList.length - 1)
                      MainButton(
                        onPressed: () {
                          value.back();
                        },
                        child: const Text(
                          "رجوع",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
