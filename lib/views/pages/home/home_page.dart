import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/pages/home/main_services.dart';
import 'package:almotamayez/views/pages/home/sub-services.dart';
import 'package:almotamayez/views/widgets/home/custominfo.dart';
import 'package:almotamayez/views/widgets/home/customlistitems.dart';
import 'package:almotamayez/views/widgets/home/customnotefication.dart';
import 'package:almotamayez/views/widgets/home/customoffers.dart';
import 'package:almotamayez/views/widgets/home/customorder.dart';
import 'package:almotamayez/views/widgets/home/customsearch.dart';
import 'package:almotamayez/views/widgets/home/customtitleandmore.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomNotefication(),
                  const CustomInfo(),
                  10.hSize,
                  const CustomSearch(),
                  20.hSize,
                  const MainText.title("العروض الخاصة"),
                  10.hSize,
                  const CustomOffers(),
                  20.hSize,
                  CustomTitleAndMore(
                    title: "الخدمات الرئيسية",
                    head: "عرض المزيد",
                    ontap: () {
                      AppRoutes.routeTo(context, const MainServices());
                    },
                  ),
                  20.hSize,
                  const CustomListItems(),
                  20.hSize,
                  CustomTitleAndMore(
                    title: "الخدمات الأكثر طلباً",
                    head: "عرض المزيد",
                    ontap: () {
                      AppRoutes.routeTo(context, const SubServices());
                    },
                  )
                ],
              ),
            ),
            10.hSize,
            const CustomOrders(),
          ],
        ),
      ),
    );
  }
}
