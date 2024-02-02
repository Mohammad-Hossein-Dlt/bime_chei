import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/add_insurance/finish_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgrts/dash_separator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InsuranceFactorScreen extends StatefulWidget {
  const InsuranceFactorScreen({super.key});

  @override
  State<InsuranceFactorScreen> createState() => _InsuranceFactorScreenState();
}

class _InsuranceFactorScreenState extends State<InsuranceFactorScreen> {
  bool isDarkMode_ = false;
  Map<String, int> factor = {
    "بیمه": 12220000,
    "کارمزد بیمه چی": 121000,
    "مالیات": 12000,
    "شهرداری": 159000,
    "خلافی": 569000,
  };
  @override
  Widget build(BuildContext context) {
    isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    String total = factor.values
        .toList()
        .fold(0, (previousValue, element) => previousValue + element)
        .toString();
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
                      onPressed: () {},
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
                      "فاکتور نهایی",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "لطفا با دقت فاکتور رو مرور کنید تا مطمئن بشید تمامی بخش ها تکمیل میشه.",
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
                                color: orange,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: white,
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
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isDarkMode_
                              ? orange.withOpacity(0.2)
                              : lightOrange,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.newspaper_rounded,
                          color: orange,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: isDarkMode_ ? secondaryBlack : gray100,
                      ),
                      child: Column(
                        children: [
                          ...factor.keys.toList().map(
                                (e) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Row(
                                    children: [
                                      Text(
                                        " ${factor[e]} تومان",
                                        textDirection: TextDirection.rtl,
                                        style: const TextStyle(
                                          color: lightGray,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const Expanded(
                                          child:
                                              DashSeparator(color: lightGray)),
                                      Text(
                                        " $e",
                                        style: const TextStyle(
                                          color: lightGray,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " $total تومان",
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontSize: 14,
                              color: lightGray,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "جمع قابل پرداخت",
                          style: TextStyle(
                              fontSize: 14,
                              color: lightGray,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "دانلود PDF فاکتور",
                              style: TextStyle(
                                color: orange,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              Icons.download,
                              color: orange,
                              size: 20,
                            ),
                          ],
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
                            builder: (context) => const FinishScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "پرداخت",
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
