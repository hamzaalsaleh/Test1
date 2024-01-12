import 'package:almotamayez/core/constants/app_routes.dart';
import 'package:almotamayez/views/pages/welcome/onbrording/my_bording.dart';
import 'package:almotamayez/views/widgets/main_page.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      nav();
    });
  }

  nav() {
    AppRoutes.routeRemoveTo(context, const Mybording(), delayMS: 2000);
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      isPure: true,
      body: Center(child: Image.asset("assets/images/logo (1).png")),
    );
  }
}
