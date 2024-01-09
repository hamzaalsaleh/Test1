import 'package:almotamayez/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.toString()),
      useMaterial3: true,
      fontFamily: 'Almarai',
    );
  }
}
