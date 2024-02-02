import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgets/profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({
    super.key,
  });

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const ProfileAppbar(),
            SliverFillRemaining(
              child: Stack(
                children: [
                  Positioned.fill(
                    bottom: 260,
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isDarkMode_ ? primaryBlack : white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            " نزدیک ترین شرکت بیمه",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "هزینه بیمه شما",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: lightGray,
                                    ),
                                  ),
                                  Text(
                                    "1,100,231 تومان",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                                child: VerticalDivider(),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "میرسید در",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: lightGray,
                                    ),
                                  ),
                                  Text(
                                    "13 و 24 دقیقه",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: red,
                              foregroundColor: white,
                              maximumSize: const Size(double.infinity, 52),
                              minimumSize: const Size(double.infinity, 52),
                            ),
                            onPressed: null,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
