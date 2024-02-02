import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgrts/profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key, required this.receiptImage});

  final String receiptImage;

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const ProfileAppbar(),
            SliverFillRemaining(
              child: Container(
                padding: const EdgeInsets.all(20),
                color: orange,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/receipt_2.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isDarkMode_ ? primaryBlack : white,
                        foregroundColor: isDarkMode_ ? white : orange,
                        maximumSize: const Size(double.infinity, 52),
                        minimumSize: const Size(double.infinity, 52),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (ctx) => Container(
                            padding: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              // color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "نام بیمه",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: lightGray,
                                  ),
                                ),
                                const Text(
                                  "بیمه چی",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const Divider(),
                                const Text(
                                  "تاریخ خرید",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: lightGray,
                                  ),
                                ),
                                const Text(
                                  "2 آبان 1402",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const Divider(),
                                const Text(
                                  "مبلغ پرداختی",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: lightGray,
                                  ),
                                ),
                                const Text(
                                  " 1,200,000  هزار تومان",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const Divider(),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: red,
                                    foregroundColor: white,
                                    maximumSize:
                                        const Size(double.infinity, 52),
                                    minimumSize:
                                        const Size(double.infinity, 52),
                                  ),
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: const Text(
                                    "بستن",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 60),
                              ],
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        "دیدن اطلاعات بیشتر",
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
