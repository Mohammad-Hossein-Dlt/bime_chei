import 'package:bime_chei/screens/main_screen.dart';
import 'package:bime_chei/screens/splash_screen.dart';

import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider.init()),
        // FutureProvider(
        //   create: (_) async {
        //     ThemeProvider themeProvider = ThemeProvider();
        //     themeProvider.getTheme();
        //     themeProvider;
        //   },
        //   initialData: lightTheme,
        // ),
      ],
      child: const BimeChei(),
    ),
  );
}

class BimeChei extends StatefulWidget {
  const BimeChei({super.key});

  @override
  State<BimeChei> createState() => _BimeCheiState();
}

class _BimeCheiState extends State<BimeChei> {
  // ThemeProvider themeProvider = ThemeProvider();

  Widget screen = const SplashScreen();

  // void getTheme() async {
  //   themeProvider.setTheme = await themeProvider.themePreference.getTheme();
  // }

  @override
  void initState() {
    super.initState();
    // getTheme();
    splash();
  }

  void splash() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {
          screen = const MainScreenNavigationBar();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, p, __) => MaterialApp(
        theme: p.themeData,
        debugShowCheckedModeBanner: false,
        home: screen,
      ),
    );
  }
}
