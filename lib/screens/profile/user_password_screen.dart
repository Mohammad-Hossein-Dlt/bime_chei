import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/widgrts/text_field_with_title.dart';
import 'package:flutter/material.dart';

class UserPasswordScreen extends StatefulWidget {
  const UserPasswordScreen({super.key});

  @override
  State<UserPasswordScreen> createState() => _UserPasswordScreenState();
}

class _UserPasswordScreenState extends State<UserPasswordScreen> {
  bool curentPassword = false;
  bool newPassword = false;
  bool confirmNewPassword = false;
  @override
  Widget build(BuildContext context) {
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
                      "رمز عبور",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: "پسورد قبلی",
                      hintText: "پسورد قبلی",
                      textDirection: TextDirection.ltr,
                      obscureText: curentPassword,
                      prefix: IconButton(
                        onPressed: () {
                          setState(() {
                            curentPassword = !curentPassword;
                          });
                        },
                        icon: Icon(
                          curentPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: darkGray,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: "پسورد جدید",
                      hintText: "پسورد جدید",
                      textDirection: TextDirection.ltr,
                      obscureText: newPassword,
                      prefix: IconButton(
                        onPressed: () {
                          setState(() {
                            newPassword = !newPassword;
                          });
                        },
                        icon: Icon(
                          newPassword ? Icons.visibility_off : Icons.visibility,
                          color: darkGray,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: "تکرار پسورد جدید",
                      hintText: "تکرار پسورد جدید",
                      textDirection: TextDirection.ltr,
                      obscureText: confirmNewPassword,
                      prefix: IconButton(
                        onPressed: () {
                          setState(() {
                            confirmNewPassword = !confirmNewPassword;
                          });
                        },
                        icon: Icon(
                          confirmNewPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: darkGray,
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
