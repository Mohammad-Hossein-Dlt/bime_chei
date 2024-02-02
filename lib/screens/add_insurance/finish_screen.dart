import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/add_insurance/policy_screen.dart';
import 'package:flutter/material.dart';

class FinishScreen extends StatefulWidget {
  const FinishScreen({super.key});

  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
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
                      "پرداخت موفق",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "پرداخت شما با موفقیت انجام شد و به زودی نتیجه خرید شما از طریق پیام به شما اطلاع رسانی خواهد شد.",
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
                    const SizedBox(height: 100),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: green.withOpacity(0.4)),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: green.withOpacity(0.4)),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: green.withOpacity(0.4)),
                                ),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: green,
                                  ),
                                  child: const Icon(
                                    Icons.check_rounded,
                                    color: white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "پرداخت موفق",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: green,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const PolicyScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "مشاهده بیمه نامه",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
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
