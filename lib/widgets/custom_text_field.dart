import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textStyle = const TextStyle(fontSize: 14),
    this.hintTextStyle = const TextStyle(fontSize: 14),
    this.textDirection = TextDirection.rtl,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
    this.prefix,
    this.obscureText = false,
  });

  final String hintText;
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextDirection textDirection;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final Widget? prefix;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return TextField(
      obscureText: widget.obscureText,
      textDirection: widget.textDirection,
      textAlign: widget.textAlign,
      maxLines: 1,
      minLines: 1,
      style: widget.textStyle,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: orange, width: 1.4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
              color: isDarkMode_ ? secondaryBlack : gray200, width: 1),
        ),
        hintTextDirection: TextDirection.rtl,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        labelStyle: const TextStyle(color: Colors.black, fontSize: 15),
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle,
        prefixIcon: widget.prefix,
      ),
    );
  }
}
