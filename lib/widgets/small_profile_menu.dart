import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/factors_screen.dart';
import 'package:bime_chei/screens/login/login_screen.dart';
import 'package:bime_chei/screens/main_screen.dart';
import 'package:bime_chei/screens/profile/notification_screen.dart';
import 'package:bime_chei/screens/support_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class SmallProfileMenu extends StatefulWidget {
  const SmallProfileMenu({super.key});

  @override
  State<SmallProfileMenu> createState() => _SmallProfileMenuState();
}

class _SmallProfileMenuState extends State<SmallProfileMenu> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Consumer<UserProvider>(
      builder: (_, provider, ___) => PopupMenuButton(
        // color: i white,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: isDarkMode_ ? secondaryBlack : gray100,
          ),
        ),
        // shadowColor: ,
        elevation: 0,
        position: PopupMenuPosition.under,
        offset: const Offset(40, 10),
        constraints: const BoxConstraints(
          // minHeight: 248,
          minWidth: 234,
          // maxHeight: 248,
          maxWidth: 234,
        ),
        itemBuilder: (context) => provider.isLogin
            ? <PopupMenuEntry<Object>>[
                PopupMenuItem(
                  onTap: null,
                  enabled: false,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "محمدحسین دولت آبادی",
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: isDarkMode_ ? white : primaryBlack,
                                ),
                              ),
                              const Text(
                                "حقیقی",
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/avatar.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "اعلانات",
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "پشتیبانی",
                    ),
                  ),
                  onTap: () {
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
                PopupMenuItem(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "فاکتور ها",
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FactorsScreen(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "خروج از حساب کاربری",
                      style: TextStyle(
                        color: red,
                      ),
                    ),
                  ),
                  onTap: () {
                    provider.loginStatus = false;
                  },
                ),
              ]
            : <PopupMenuEntry<Object>>[
                const PopupMenuItem(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "نام کاربری",
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "حقیقی/ حقوقی",
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/avatar.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: orange,
                            backgroundColor: isDarkMode_
                                ? orange.withOpacity(0.2)
                                : lightOrange,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(
                                  isPop: true,
                                ),
                              ),
                            )
                                .then(
                              (value) {
                                Navigator.of(context).pop();
                              },
                            );
                          },
                          child: const Text("ورورد"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: orange,
                            backgroundColor: isDarkMode_
                                ? orange.withOpacity(0.2)
                                : lightOrange,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(
                                  isSignIn: false,
                                  isPop: true,
                                ),
                              ),
                            )
                                .then(
                              (value) {
                                Navigator.of(context).pop();
                              },
                            );
                          },
                          child: const Text("ثبت نام"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Icon(
            Iconsax.menu_1,
            color: isDarkMode_ ? white : primaryBlack,
            size: 24,
          ),
        ),
      ),
    );
  }
}
