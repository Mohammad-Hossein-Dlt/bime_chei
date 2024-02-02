import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/screens/add_insurance/complete_info_screen.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgets/simple_insurance_item.dart';
import 'package:bime_chei/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum InsurancetType { individual, legal }

enum InsuranceFor { motorcycle, car }

class BasicInsuranceInfoScreen extends StatefulWidget {
  const BasicInsuranceInfoScreen({
    super.key,
    required this.insuranceFor,
  });

  final InsuranceFor insuranceFor;
  @override
  State<BasicInsuranceInfoScreen> createState() =>
      _BasicInsuranceInfoScreenState();
}

class _BasicInsuranceInfoScreenState extends State<BasicInsuranceInfoScreen> {
  bool isDarkMode_ = false;

  @override
  Widget build(BuildContext context) {
    isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

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
                    Text(
                      widget.insuranceFor == InsuranceFor.car
                          ? "ماشینی که میخواید تمدید کنید را انتخاب کنید"
                          : "موتوری که میخواید تمدید کنید را انتخاب کنید",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    horizontalList(),
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
                                color: isDarkMode_ ? secondaryBlack : gray200,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: lightGray,
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
                      title: "نام نمایشی",
                      hintText: "نام نمایشی",
                    ),
                    const SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: widget.insuranceFor == InsuranceFor.car
                          ? "شماره شاسی ماشین"
                          : "شماره شاسی موتور",
                      hintText: "KSF102HS07",
                      textStyle: const TextStyle(letterSpacing: 10),
                      hintTextStyle: const TextStyle(
                        letterSpacing: 10,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                    const SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: widget.insuranceFor == InsuranceFor.car
                          ? "مدل ماشین"
                          : "مدل موتور",
                      hintText: "1402",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.insuranceFor == InsuranceFor.car
                          ? "شماره پلاک ماشین"
                          : "شماره پلاک موتور",
                      style: const TextStyle(
                        color: lightGray,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    widget.insuranceFor == InsuranceFor.car
                        ? Center(
                            child: Image.asset(
                              "assets/images/car_tag.png",
                              width: 200,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Center(
                            child: Image.asset(
                              "assets/images/motorcycle_tag.png",
                              width: 120,
                              height: 74,
                              fit: BoxFit.cover,
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
                            builder: (context) => const CompleteInfoScreen(),
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

  Widget horizontalList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Container(
            width: 140,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
          widget.insuranceFor == InsuranceFor.car
              ? const Row(
                  children: [
                    SizedBox(width: 10),
                    SimpleInsuranceItem(image: "car_2.png", name: "پراید علی"),
                    SizedBox(width: 10),
                    SimpleInsuranceItem(image: "car.png", name: "206 محمد"),
                    SizedBox(width: 10),
                  ],
                )
              : const Row(
                  children: [
                    SizedBox(width: 10),
                    SimpleInsuranceItem(
                        image: "motorcycle.png", name: "موتور رضا"),
                    SizedBox(width: 10),
                    SimpleInsuranceItem(
                        image: "motorcycle_2.png", name: "هوندا حسین"),
                    SizedBox(width: 10),
                  ],
                )
        ],
      ),
    );
  }
}
