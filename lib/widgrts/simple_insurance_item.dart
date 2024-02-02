import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SimpleInsuranceItem extends StatelessWidget {
  const SimpleInsuranceItem({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Card(
      elevation: 2,
      child: SizedBox(
        width: 140,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/$image",
              width: 104,
              height: 106,
            ),
            Text(
              name,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isDarkMode_ ? orange.withOpacity(0.2) : lightOrange,
                foregroundColor: orange,
                maximumSize: const Size(64, 24),
                minimumSize: const Size(64, 24),
                padding: EdgeInsets.zero,
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                "بررسی",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
