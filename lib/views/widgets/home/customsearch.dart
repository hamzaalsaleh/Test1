import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColors.yblueColor,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.yGreyColor),
                      borderRadius: 8.cBorder)),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(right: 7),
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.yblueColor),
            child: const Icon(
              Icons.tune_outlined,
              color: AppColors.yWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
