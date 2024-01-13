import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/core/helper/functions/navigation_service.dart';
import 'package:almotamayez/views/pages/auth/login_page.dart';
import 'package:flutter/material.dart';

class SignupController with ChangeNotifier {
  login() {}
  gotoLogin(BuildContext context) {
    AppRoutes.routeRemoveAllTo(
      context,
      const LoginPage(),
    );
  }
}
