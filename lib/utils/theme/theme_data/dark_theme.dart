import 'package:bime_chei/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: primaryBlack,

  fontFamily: "Shabnam",
  hintColor: darkGray,
  scaffoldBackgroundColor: primaryBlack,
  iconTheme: const IconThemeData(color: white),
  dividerColor: secondaryBlack,
  dividerTheme: const DividerThemeData(color: secondaryBlack),

  appBarTheme: const AppBarTheme(
    backgroundColor: primaryBlack,
    surfaceTintColor: Colors.transparent,
  ),

  colorScheme: const ColorScheme.dark(
    shadow: primaryBlack,
    primary: white,
    primaryContainer: secondaryBlack,
  ),
  // -------------------------------------------------------
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: primaryBlack,
      backgroundColor: orange,
      // shape: const ContinuousRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8))),
      surfaceTintColor: Colors.transparent,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      surfaceTintColor: Colors.transparent,
      side: BorderSide(color: orange),
      foregroundColor: orange,
    ),
  ),
  cardTheme: const CardTheme(
    color: secondaryBlack,
    surfaceTintColor: Colors.transparent,
    shadowColor: primaryBlack,
  ),
  iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
    foregroundColor: primaryBlack,
  )),
);
