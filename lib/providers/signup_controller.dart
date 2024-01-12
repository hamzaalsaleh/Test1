import 'package:almotamayez/views/pages/auth/login_page.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_routes.dart';
import '../core/helper/functions/navigation_service.dart';

class SignupController with ChangeNotifier {
  login() {}
  gotologin() {
    AppRoutes.routeRemoveAllTo(
        NavigationService.context, const LoginPage());
  }
}
