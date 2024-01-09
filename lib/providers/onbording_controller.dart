import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/functions/navigation_service.dart';
import 'package:almotamayez/data/local/local_data.dart';
import 'package:almotamayez/models/onbording_model.dart';
import 'package:almotamayez/views/pages/auth/login_page.dart';

import 'package:flutter/material.dart';

class Onbordingcontroller with ChangeNotifier {
  int currentpage = 0;
  late PageController pageController;

  next() {
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      AppRoutes.routeRemoveAllTo(NavigationService.context, const Login());
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }

    notifyListeners();
  }

  back() {
    currentpage--;
    if (currentpage > onbordinglist.length - 1) {
      LocalData.sharedPref.setString("step", '1');
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
    notifyListeners();
  }

  skip() {
    AppRoutes.routeRemoveAllTo(NavigationService.context, const Login());
  }

  onpagechenged(int index) {
    currentpage = index;

    notifyListeners();
  }

  Onbordingcontroller() {
    pageController = PageController();
  }
}
