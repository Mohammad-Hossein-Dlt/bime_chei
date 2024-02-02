import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      backgroundColor: orange,
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/logo_white.png"),
              const SizedBox(height: 10),
              Text(
                "خرید بیمه با\nBIME IRAN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: isDarkMode_ ? primaryBlack : white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
