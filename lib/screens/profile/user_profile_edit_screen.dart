import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgrts/text_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfileEditScreen extends StatefulWidget {
  const UserProfileEditScreen({super.key});

  @override
  State<UserProfileEditScreen> createState() => _UserProfileEditScreenState();
}

class _UserProfileEditScreenState extends State<UserProfileEditScreen> {
  bool curentPassword = false;
  bool newPassword = false;
  bool confirmNewPassword = false;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: const SizedBox(),
              centerTitle: true,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Iconsax.arrow_right_1,
                    size: 24,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      "حساب کاربری",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWithTitle(
                      title: "نام و نام خانوادگی",
                      hintText: "نام و نام خانوادگی شما",
                      textDirection: TextDirection.ltr,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "تصویر پروفایل شما",
                      style: TextStyle(
                        color: lightGray,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: 202,
                        height: 172,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: orange.withOpacity(0.2),
                          ),
                          color: isDarkMode_ ? secondaryBlack : gray100,
                        ),
                        child: Icon(
                          Icons.cloud_upload_rounded,
                          color: orange,
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: orange,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "آپلود تصاویر",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(double.infinity, 52),
                        minimumSize: const Size(double.infinity, 52),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "ثبت تغییرات",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
