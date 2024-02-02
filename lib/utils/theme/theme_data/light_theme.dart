import 'package:bime_chei/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Shabnam",
  hintColor: lightGray,
  scaffoldBackgroundColor: white,
  iconTheme: const IconThemeData(color: primaryBlack),
  dividerColor: gray100,
  dividerTheme: const DividerThemeData(color: gray100),
  appBarTheme: const AppBarTheme(
    backgroundColor: white,
    surfaceTintColor: Colors.transparent,
  ),
  colorScheme: ColorScheme.light(
    shadow: Colors.white.withOpacity(0.6),
    primary: primaryBlack,
    primaryContainer: Colors.white,
  ),
  // -------------------------------------------------------
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: white,
      backgroundColor: orange,
      // shape: const ContinuousRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8))),
      surfaceTintColor: Colors.transparent,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      surfaceTintColor: Colors.transparent,
      side: BorderSide(color: orange),
      foregroundColor: orange,
    ),
  ),
  cardTheme: CardTheme(
    color: white,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.white.withOpacity(0.6),
  ),
);
