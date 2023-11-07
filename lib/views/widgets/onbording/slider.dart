import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations_provider.dart';
import 'package:almotamayez/models/onbording_model.dart';
import 'package:almotamayez/providers/onbording_controller.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Onbordingcontroller>(
      builder: (context, val, child) => PageView.builder(
          controller: val.pageController,
          onPageChanged: (value) {
            val.onpagechenged(value);
          },
          itemCount: onbordinglist.length,
          itemBuilder: (context, i) => Column(
                children: [
                  20.hSize,
                  Image.asset(
                    onbordinglist[i].image!,
                    fit: BoxFit.fill,
                  ),
                  20.hSize,
                  Text(
                    onbordinglist[i].title!,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  10.hSize,
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      onbordinglist[i].body!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.ytitlegrey,
                          fontSize: 18),
                    ),
                  )
                ],
              )),
    );
  }
}
