import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/main_screen.dart';
import 'package:bime_chei/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
    this.isSignIn = true,
    this.isPop = false,
  });

  bool isSignIn;
  bool isPop;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.isSignIn ? "ورود" : "ثبت نام",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      widget.isSignIn
                          ? "ورود به بیمه چی"
                          : "در بیمه چی ثبت نام کنید",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 40),
                    widget.isSignIn ? signinForm() : signupForm(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(double.infinity, 52),
                        minimumSize: const Size(double.infinity, 52),
                      ),
                      onPressed: () {
                        Provider.of<UserProvider>(context, listen: false)
                            .loginStatus = true;

                        if (widget.isPop) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text(
                        widget.isSignIn ? "ورود" : "ثبت نام",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: orange,
                          ),
                          onPressed: () {
                            setState(() {
                              widget.isSignIn = !widget.isSignIn;
                            });
                          },
                          child: Text(
                            widget.isSignIn ? "ثبت نام" : "ورود",
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          widget.isSignIn
                              ? "ثبت نام نکردید؟"
                              : "ثبت نام کردید؟",
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
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

  Widget signinForm() {
    return Column(
      children: [
        const CustomTextField(
          hintText: "نام کاربری",
          hintTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefix: Icon(
            Iconsax.profile_circle,
            color: darkGray,
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: "نام کاربری",
          hintTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          obscureText: showPassword,
          prefix: IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: Icon(
              showPassword ? Icons.visibility_off : Icons.visibility,
              color: darkGray,
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: const Text(
            "فراموشی رمز عبور",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget signupForm() {
    return Column(
      children: [
        const CustomTextField(
          hintText: "نام کامل شما",
          hintTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefix: Icon(
            Iconsax.profile_circle,
            color: darkGray,
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: "آدرس ایمیل",
          hintTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          obscureText: showPassword,
          prefix: const Icon(
            Icons.email_outlined,
            color: darkGray,
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: "شماره تماس",
          hintTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          obscureText: showPassword,
          prefix: const Icon(
            Iconsax.call,
            color: darkGray,
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: "نام کاربری",
          hintTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          obscureText: showPassword,
          prefix: IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: Icon(
              showPassword ? Icons.visibility_off : Icons.visibility,
              color: darkGray,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
