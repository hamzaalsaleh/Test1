import 'package:almotamayez/core/constants/app_themes.dart';
import 'package:almotamayez/core/ys_localizations/ys_localizations.dart';
import 'package:almotamayez/core/ys_localizations/ys_material_app.dart';
import 'package:almotamayez/data/remote/remote_data.dart';
import 'package:almotamayez/providers/onbording_controller.dart';
import 'package:almotamayez/providers/x_provider.dart';
import 'package:almotamayez/views/pages/test/test_page.dart';
import 'package:flutter/material.dart';

import 'core/ys_localizations/ys_localizations_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await YsLocalizations.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => YsLocalizationsProvider()),
        ChangeNotifierProvider(create: (context) => RemoteData()),
        ChangeNotifierProvider(create: (context) => XProvider()),
        ChangeNotifierProvider(create: (context) => Onbordingcontroller()),
      ],
      child: YsMaterialApp(
        title: 'app_name'.tr,
        theme: AppThemes.theme,
        home: const TestPage(),
      ),
    );
  }
}
