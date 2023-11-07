import 'package:almotamayez/data/local/local_data.dart';
import 'package:almotamayez/models/onbording_model.dart';
import 'package:flutter/material.dart';

class Onbordingcontroller extends ChangeNotifier {
  int currentpage = 0;
  late PageController pageController;

  next() {
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      LocalData.sharedPref.setString("step", '1');
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
    print("rebuld");
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

  onpagechenged(int index) {
    currentpage = index;

    notifyListeners();
  }

  Onbordingcontroller() {
    pageController = PageController();
  }
}
