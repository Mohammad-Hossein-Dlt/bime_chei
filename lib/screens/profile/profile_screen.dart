import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/main_screen.dart';
import 'package:bime_chei/screens/profile/notification_screen.dart';
import 'package:bime_chei/screens/profile/user_password_screen.dart';
import 'package:bime_chei/screens/profile/user_profile_edit_screen.dart';
import 'package:bime_chei/screens/support_screen.dart';
import 'package:bime_chei/utils/theme/theme_entities.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode_ = false;
  @override
  Widget build(BuildContext context) {
    isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Consumer<ThemeProvider>(
      builder: (_, themeProvider, __) {
        bool isDarkMode_ = themeProvider.isDarkMode;
        return Scaffold(
          body: SafeArea(
              child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                leading: IconButton(
                  onPressed: () {
                    if (isDarkMode_) {
                      themeProvider.setTheme = ThemeEntities.light;
                    } else {
                      themeProvider.setTheme = ThemeEntities.dark;
                    }
                  },
                  icon: Icon(
                    isDarkMode_ ? Iconsax.sun_15 : Iconsax.moon5,
                    color: isDarkMode_ ? orange : primaryBlack,
                  ),
                ),
                centerTitle: true,
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "پروفایل",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 126,
                                height: 126,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: orange, width: 2),
                                  ),
                                  child: const FittedBox(
                                    fit: BoxFit.cover,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "assets/images/avatar.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: IconButton(
                                  style: IconButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    maximumSize: const Size(40, 40),
                                    minimumSize: const Size(40, 40),
                                  ),
                                  onPressed: () {},
                                  icon: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: secondaryBlack,
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      color: orange,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "محمدحسین دولت آبادی",
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "test@gmail.com",
                            textDirection: TextDirection.rtl,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: lightGray,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      item(
                        title: "رمز عبور",
                        icon: Icon(
                          Iconsax.password_check5,
                          color: isDarkMode_ ? white : primaryBlack,
                        ),
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const UserPasswordScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      item(
                        title: "حساب کاربری",
                        icon: Icon(
                          Icons.settings,
                          color: isDarkMode_ ? white : primaryBlack,
                        ),
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const UserProfileEditScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      item(
                        title: "اعلان ها",
                        icon: Icon(
                          Iconsax.notification5,
                          color: isDarkMode_ ? white : primaryBlack,
                        ),
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const NotificationScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      item(
                        title: "پشتیبانی آنلاین",
                        icon: Icon(
                          Icons.support_agent_rounded,
                          color: isDarkMode_ ? white : primaryBlack,
                        ),
                        function: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            withNavBar: false,
                            customPageRoute: MaterialPageRoute(
                              builder: (context) => const SupportScreen(),
                            ),
                            screen: const SizedBox(),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      item(
                        title: "خروج از حساب کاربری",
                        icon: Transform.scale(
                          scaleX: -1,
                          child: const Icon(
                            Iconsax.logout5,
                            color: red,
                          ),
                        ),
                        function: () {
                          Provider.of<UserProvider>(context, listen: false)
                              .loginStatus = false;
                        },
                        isLogOut: true,
                      ),
                      // const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          )),
        );
      },
    );
  }

  Widget item({
    required String title,
    String? subTitle,
    required Widget icon,
    required Function() function,
    bool isLogOut = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      // margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isDarkMode_ ? secondaryBlack : gray100,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        onTap: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Iconsax.arrow_left_2,
                color: isLogOut ? red : lightGray,
                size: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: isLogOut
                                  ? red
                                  : isDarkMode_
                                      ? white
                                      : primaryBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: isDarkMode_ ? primaryBlack : white,
                        shape: BoxShape.circle,
                      ),
                      child: icon,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
