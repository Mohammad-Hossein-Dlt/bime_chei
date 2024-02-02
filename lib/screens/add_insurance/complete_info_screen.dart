import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/add_insurance/insurance_factor_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompleteInfoScreen extends StatefulWidget {
  const CompleteInfoScreen({super.key});

  @override
  State<CompleteInfoScreen> createState() => _CompleteInfoScreenState();
}

class _CompleteInfoScreenState extends State<CompleteInfoScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Iconsax.arrow_right_1,
                        size: 24,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "تکمیل مشخصات ماشین",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "در وارد کردن اطلاعات دقت کنید تا بعد از صادر شدن بیمه نامه مشکلی برای شما به ووجود نیاد.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: lightGray,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(child: Divider(thickness: 2)),
                        Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isDarkMode_ ? secondaryBlack : gray200,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: lightGray,
                                size: 24,
                              ),
                            ),
                            const Text(
                              "پرداخت",
                              style: TextStyle(
                                fontSize: 12,
                                color: lightGray,
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: Divider(thickness: 2)),
                        Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: orange,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: white,
                                size: 24,
                              ),
                            ),
                            const Text(
                              "مشخصات",
                              style: TextStyle(
                                fontSize: 12,
                                color: lightGray,
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: Divider(thickness: 2)),
                        Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: orange,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: white,
                                size: 24,
                              ),
                            ),
                            const Text(
                              "اطلاعات اولیه",
                              style: TextStyle(
                                fontSize: 12,
                                color: lightGray,
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: Divider(thickness: 2)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWithTitle(
                      title: "مدل دقیق ماشین",
                      hintText: "پراید 11",
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWithTitle(
                      title: 'رنگ ماشین',
                      hintText: "سفید",
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "مدت زمان پایان بیمه",
                      style: TextStyle(
                        color: isDarkMode_ ? darkGray : lightGray,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: isDarkMode_ ? secondaryBlack : gray200,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "31 اسفند 1405",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: isDarkMode_ ? darkGray : lightGray,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(double.infinity, 52),
                        minimumSize: const Size(double.infinity, 52),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const InsuranceFactorScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "ادامه",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
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
