import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/helper/extensions/context_size.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.actionWidgets,
  });

  final String title;
  final List<Widget>? actionWidgets;

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: MainText.title(widget.title),
      centerTitle: true,
    );
  }
}
