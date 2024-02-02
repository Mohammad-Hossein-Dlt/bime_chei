import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_data/dark_theme.dart';
import 'package:bime_chei/utils/theme/theme_data/light_theme.dart';
import 'package:bime_chei/utils/theme/theme_entities.dart';
import 'package:bime_chei/utils/theme/theme_preference.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider.init() {
    _getTheme();
  }
  ThemePreference themePreference = ThemePreference();

  ThemeEntities _THEMESTATE = ThemeEntities.light;

  ThemeData _themeData = lightTheme;

  ThemeData get themeData => _themeData;

  void _getTheme() async {
    _THEMESTATE = await themePreference.getTheme();

    _themeData = _THEMESTATE == ThemeEntities.light ? lightTheme : darkTheme;
    if (_THEMESTATE == ThemeEntities.dark) {
      orange = orangeDark;
    } else {
      orange = orangeLight;
    }
  }

  bool get isDarkMode => _THEMESTATE == ThemeEntities.dark;

  set setTheme(ThemeEntities theme) {
    _THEMESTATE = theme;
    themePreference.setTheme(theme: theme);
    _getTheme();
    notifyListeners();
  }

  // void setTheme(ThemeEntities theme) async {
  //   THEME_STATE = theme;
  //   themePreference.setTheme(theme: theme);
  //   getTheme();
  //   notifyListeners();
  // }
}
