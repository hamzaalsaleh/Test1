import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:almotamayez/views/widgets/main_textfield.dart';
import 'package:flutter/material.dart';

class CustomQuastion extends StatelessWidget {
  const CustomQuastion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MainText.heading("2 أسئلة"),
            Spacer(),
            MainText.heading("تصفية"),
          ],
        ),
        10.hSize,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
                child: MainTextField(
              borderColor: Colors.grey,
              hint: "طرح سؤال",
            )),
            Container(
              margin: const EdgeInsets.only(right: 5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: 20.cBorder,
                color: AppColors.yblueColor,
              ),
              child: const Icon(
                Icons.near_me_outlined,
                color: AppColors.yWhiteColor,
              ),
            )
          ],
        ),
        10.hSize,
        Card(
          child: Container(
            padding: 10.aEdge,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: 20.cBorder,
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: AppColors.yblueColor,
                      ),
                    ),
                    20.wSize,
                    const Column(
                      children: [
                        Text("عبدالله محمد"),
                        MainText.textButton("منذ دقيقة"),
                      ],
                    )
                  ],
                ),
                10.hSize,
                Row(
                  children: [
                    const MainText.textButton(
                        "كيفكم أخباركم؟ كيف يمكنني معرفة وقت الخدمة؟"),
                    25.wSize,
                    Container(
                        decoration: const BoxDecoration(
                            border: BorderDirectional(
                                bottom:
                                    BorderSide(color: AppColors.yblueColor))),
                        child: const Text(
                          "رد",
                          style: TextStyle(
                              color: AppColors.yblueColor,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        10.hSize,
        Card(
          child: Container(
            padding: 10.aEdge,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: 20.cBorder,
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: AppColors.yblueColor,
                      ),
                    ),
                    20.wSize,
                    const Column(
                      children: [
                        Text("عبدالله محمد"),
                        MainText.textButton("منذ دقيقة"),
                      ],
                    )
                  ],
                ),
                10.hSize,
                Row(
                  children: [
                    const MainText.textButton(
                        "كيفكم أخباركم؟ كيف يمكنني معرفة وقت الخدمة؟"),
                    25.wSize,
                    Container(
                        decoration: const BoxDecoration(
                            border: BorderDirectional(
                                bottom:
                                    BorderSide(color: AppColors.yblueColor))),
                        child: const Text(
                          "رد",
                          style: TextStyle(
                              color: AppColors.yblueColor,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                10.hSize,
                Row(
                  children: [
                    const Icon(
                      Icons.question_answer_outlined,
                      color: AppColors.yGreyColor,
                    ),
                    5.wSize,
                    const MainText.textButton(
                        "كيفكم أخباركم؟ كيف يمكنني معرفة وقت الخدمة؟")
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
