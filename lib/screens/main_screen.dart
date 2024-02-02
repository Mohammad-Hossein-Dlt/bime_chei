import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/find_screen.dart';
import 'package:bime_chei/screens/home_screen.dart';
import 'package:bime_chei/screens/insurances/insurances_screen.dart';
import 'package:bime_chei/screens/login/login_screen.dart';
import 'package:bime_chei/screens/profile/profile_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class UserProvider with ChangeNotifier {
  bool isLogin = false;

  Widget get screen => isLogin ? const ProfileScreen() : LoginScreen();

  set loginStatus(bool isLogin_) {
    isLogin = isLogin_;

    notifyListeners();
  }
}

class MainScreenNavigationBar extends StatefulWidget {
  const MainScreenNavigationBar({super.key});

  @override
  State<MainScreenNavigationBar> createState() =>
      _MainScreenNavigationBarState();
}

class _MainScreenNavigationBarState extends State<MainScreenNavigationBar> {
  UserProvider userProvider = UserProvider();

  final PersistentTabController _controller = PersistentTabController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Consumer<UserProvider>(
      builder: (context, provider, __) {
        return PersistentTabView(
          context,
          controller: _controller,
          navBarStyle: NavBarStyle.style9,
          confineInSafeArea: true,

          backgroundColor: isDarkMode_ ? primaryBlack : white,

          stateManagement: true,
          bottomScreenMargin: 0,
          popAllScreensOnTapOfSelectedTab: false,
          popActionScreens: PopActionScreensType.once,
          popAllScreensOnTapAnyTabs: false,
          // hideNavigationBarWhenKeyboardShows: true,
          // navBarHeight: 0,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10),
              colorBehindNavBar: Colors.white),
          items: [
            item(
              activeIcon: Icon(Iconsax.home_25, size: 28, color: orange),
              inactiveIcon: const Icon(Iconsax.home_2, size: 20),
              title: "خانه",
            ),
            item(
              activeIcon: Icon(Iconsax.shield_tick5, size: 28, color: orange),
              inactiveIcon: const Icon(Iconsax.shield_tick, size: 20),
              title: "بیمه",
            ),
            item(
              activeIcon: Icon(Icons.person, color: orange, size: 28),
              inactiveIcon: const Icon(Icons.person_outline_rounded,
                  color: lightGray, size: 20),
              title: "پروفایل",
              isCenter: true,
            ),
            item(
              activeIcon: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Iconsax.search_normal_15, size: 24, color: orange),
              ),
              inactiveIcon: const Icon(Iconsax.search_normal_1, size: 20),
              title: "نزدیکترین بیمه",
            ),
          ],
          screens: [
            const HomeScreen(),
            const InsurencesScreen(),
            provider.screen,
            const FindScreen(),
          ],
        );
      },
    );
  }

  PersistentBottomNavBarItem item({
    required String title,
    required Widget activeIcon,
    required Widget inactiveIcon,
    bool isCenter = false,
  }) {
    return PersistentBottomNavBarItem(
      icon: activeIcon,
      inactiveIcon: inactiveIcon,
      // --------------------------
      activeColorPrimary: orange,
      inactiveColorPrimary: lightGray,
      // --------------------------
      title: title,
      // iconSize: 24,

      textStyle: const TextStyle(
        fontSize: 14,
        color: white,
        fontWeight: FontWeight.bold,
      ),

      // --------------------------
    );
  }
}
