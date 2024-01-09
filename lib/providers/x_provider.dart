import 'package:almotamayez/core/helper/functions/try_catch.dart';
import 'package:flutter/material.dart';

import '../core/helper/functions/navigation_service.dart';
import '../data/remote/remote_data.dart';

export 'package:provider/provider.dart';

class XProvider extends ChangeNotifier {
  int count = 0;
  final data =
      Provider.of<RemoteData>(NavigationService.context, listen: false);


  Future<void> get getData async {
    tryCatch(() async {
      // await data.login();
    });
    notifyListeners();
  }

  int currentpage = 0;
  late PageController pageController;

  onpagechenged(int index) {
    currentpage = index;

    notifyListeners();
  }

  XProvider() {
    pageController = PageController();
  }
  changepage(int x) {
    if (x == 0) {
      pageController.animateToPage(0,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    } else if (x == 1) {
      pageController.animateToPage(1,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    } else if (x == 2) {
      pageController.animateToPage(2,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }
}
