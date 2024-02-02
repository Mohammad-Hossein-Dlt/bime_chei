import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/add_insurance/basic_insurance_info_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';

import 'package:bime_chei/widgrts/payment_item.dart';
import 'package:bime_chei/widgrts/profile_appbar.dart';
import 'package:bime_chei/widgrts/simple_insurance_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode_ = false;
  @override
  Widget build(BuildContext context) {
    isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const ProfileAppbar(),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Divider(),
                        const SizedBox(height: 20),
                        const Text(
                          "به بیمه چی خوش آمدید",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              height: 336,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: orange,
                              ),
                            ),
                            Positioned.fill(
                              child: Image.asset(
                                "assets/images/effect.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 26,
                              right: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "خرید بیمه ماشین و موتور",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "با سیستم بیمه چی میتونید به صورت آنی بیمه برای موتور و ماشین بخرید و آنی تحویل بگیرید.",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          isDarkMode_ ? primaryBlack : white,
                                      foregroundColor:
                                          isDarkMode_ ? white : orange,
                                      maximumSize: const Size(110, 40),
                                      minimumSize: const Size(110, 40),
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (ctx) =>
                                            const SelectInsuranceType(),
                                        isScrollControlled: true,
                                      );
                                    },
                                    child: const Text(
                                      "خرید آنی بیمه",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 26,
                              left: 20,
                              child: Image.asset(
                                "assets/images/car.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  horizontalList(),
                  const SizedBox(height: 20),
                  payments(),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget horizontalList() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "دیدن همه",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: orange,
                  ),
                ),
              ),
              const Text(
                "بیمه های شما",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 140,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: isDarkMode_ ? orange.withOpacity(0.2) : lightOrange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: orange,
                      size: 50,
                    ),
                    Text(
                      "خرید بیمه",
                      style: TextStyle(
                        fontSize: 12,
                        color: orange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const SimpleInsuranceItem(image: "car_2.png", name: "پراید علی"),
              const SizedBox(width: 10),
              const SimpleInsuranceItem(image: "car.png", name: "206 محمد"),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }

  Widget payments() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "دیدن همه",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: orange,
                    ),
                  ),
                ),
                const Text(
                  "پرداختی های شما",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    PaymentItem(
                      image: "car_tag.png",
                      title: "بیمه پراید مدل 88",
                      date: "12 مهر 1402",
                    ),
                    Divider(),
                    PaymentItem(
                      image: "car_tag.png",
                      title: "بیمه سمند مدل 90",
                      date: "2 آبان 1402",
                    ),
                    Divider(),
                    PaymentItem(
                      image: "car_tag.png",
                      title: "بیمه 111 مدل 91",
                      date: "16 تیر 1402",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

class SelectInsuranceType extends StatefulWidget {
  const SelectInsuranceType({super.key});

  @override
  State<SelectInsuranceType> createState() => _SelectInsuranceTypeState();
}

class _SelectInsuranceTypeState extends State<SelectInsuranceType> {
  InsurancetType type = InsurancetType.individual;
  InsuranceFor insuranceFor = InsuranceFor.car;
  bool acceptRules = false;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode_ ? primaryBlack : white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: isDarkMode_ ? darkGray : gray200,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "نوع بیمه خود را انتخاب کنید",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                type = InsurancetType.individual;
              });
            },
            child: Container(
              width: double.infinity,
              // height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: type == InsurancetType.individual
                      ? orange
                      : Colors.transparent,
                ),
                color: isDarkMode_ ? secondaryBlack : Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "بیمه شخص حقیقی",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          isDarkMode_ ? orange.withOpacity(0.2) : lightOrange,
                    ),
                    child: Icon(
                      Icons.person_outline_rounded,
                      color: orange,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              setState(() {
                type = InsurancetType.legal;
              });
            },
            child: Container(
              width: double.infinity,
              // height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: type == InsurancetType.legal
                      ? orange
                      : Colors.transparent,
                ),
                color: isDarkMode_ ? secondaryBlack : Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "بیمه شخص حقوقی",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          isDarkMode_ ? orange.withOpacity(0.2) : lightOrange,
                    ),
                    child: Icon(
                      Iconsax.building_4,
                      color: orange,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    insuranceFor = InsuranceFor.car;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: insuranceFor == InsuranceFor.car
                          ? orange
                          : Colors.transparent,
                    ),
                    color: isDarkMode_ ? secondaryBlack : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/car.png",
                        width: 86,
                        height: 58,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "بیمه ماشین",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    insuranceFor = InsuranceFor.motorcycle;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: insuranceFor == InsuranceFor.motorcycle
                          ? orange
                          : Colors.transparent,
                    ),
                    color: isDarkMode_ ? secondaryBlack : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/motorcycle.png",
                        width: 86,
                        height: 58,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "بیمه متور",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "قوانین بیمه چی را تایید میکنید؟",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 12,
                  color: lightGray,
                ),
              ),
              Checkbox(
                side: const BorderSide(color: lightGray),
                activeColor: orange,
                value: acceptRules,
                onChanged: (value) {
                  setState(() {
                    acceptRules = value!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: orange,
              maximumSize: const Size(double.infinity, 52),
              minimumSize: const Size(double.infinity, 52),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      BasicInsuranceInfoScreen(insuranceFor: insuranceFor),
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
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
