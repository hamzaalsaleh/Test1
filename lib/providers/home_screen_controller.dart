import 'package:almotamayez/views/favoraite/favorite.dart';
import 'package:almotamayez/views/pages/chat.dart';
import 'package:almotamayez/views/pages/home/home_page.dart';
import 'package:almotamayez/views/profile/profilepage.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  int currentpage = 0;
  List<Widget> listpage = [
    const HomePage(),
    const ChatPage(),
    const FavoritePage(),
    const ProfilePage()
  ];
  List titlepagename = ["الرئيسية", "الشات", "المفضلة", "البروفايل"];
  changepage(int i) {
    currentpage = i;
    notifyListeners();
  }
}
