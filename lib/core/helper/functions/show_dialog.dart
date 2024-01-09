import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:almotamayez/core/constants/app_strings.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/core/helper/functions/navigation_service.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class ProfilController with ChangeNotifier {
  bool im = false;
  showdialog() {
    showDialog(
      context: NavigationService.context,
      builder: (context) => AlertDialog(
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: 12.cBorder,
        ),
        title: Column(
          children: [
            im == false
                ? Image.asset(AppStrings.message)
                : Image.asset(AppStrings.exit),
            10.hSize,
            im == false
                ? Text(
                    "تم إعادة تعيين كلمة المرور بنجاح",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                : Text(
                    "هل أنت متأكد أنك  تريد تسجيل الخروج",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
            40.hSize,
            im == false
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "موافق",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.yblueColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        const Text(
                          "موافق",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.yblueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        10.hSize,
                        const MainText("رجوع")
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
    ;
  }
}
