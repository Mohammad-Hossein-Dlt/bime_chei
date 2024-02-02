import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgets/car_insurance_item.dart';
import 'package:bime_chei/widgets/profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InsurencesScreen extends StatefulWidget {
  const InsurencesScreen({super.key});

  @override
  State<InsurencesScreen> createState() => _InsurencesScreenState();
}

class _InsurencesScreenState extends State<InsurencesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              const ProfileAppbar(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                  child: TabBar(
                    dividerColor: isDarkMode_ ? secondaryBlack : gray100,
                    indicatorPadding: EdgeInsets.zero,
                    // in: double.infinity,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: orange,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: darkGray,
                    ),
                    indicatorColor: orange,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(
                        text: "بیمه های اخیر",
                      ),
                      Tab(
                        text: "تراکنش های اخیر",
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          CarInsuranceItem(
                            name: "بیمه 207 مدل 1403",
                            carTagImage: "car_tag.png",
                            receiptImage: "receipt.png",
                            price: "1,200,000",
                          ),
                          SizedBox(height: 20),
                          CarInsuranceItem(
                            name: "بیمه 207 مدل 1403",
                            carTagImage: "car_tag.png",
                            receiptImage: "receipt.png",
                            price: "1,200,000",
                          ),
                          SizedBox(height: 20),
                          CarInsuranceItem(
                            name: "بیمه 207 مدل 1403",
                            carTagImage: "car_tag.png",
                            receiptImage: "receipt.png",
                            price: "1,200,000",
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/empty_img.png",
                          width: 140,
                          height: 146,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "خالی",
                          style: TextStyle(
                            fontSize: 16,
                            color: darkGray,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "شما هنوز هیچ تراکنشی نداشتید",
                          style: TextStyle(
                            fontSize: 16,
                            color: darkGray,
                          ),
                        ),
                      ],
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
