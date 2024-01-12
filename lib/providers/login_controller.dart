import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/functions/navigation_service.dart';
import 'package:almotamayez/views/pages/auth/forget_password_page.dart';
import 'package:almotamayez/views/pages/auth/signup.dart';
import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  login() {}
  gotosignup() {
    AppRoutes.routeRemoveAllTo(NavigationService.context, const Signup());
  }

  gotoforgetpassword() {
    AppRoutes.routeTo(NavigationService.context, const ForgetPasswordPage());
  }
}
