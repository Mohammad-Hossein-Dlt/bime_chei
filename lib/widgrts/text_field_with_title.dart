import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:bime_chei/widgrts/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFieldWithTitle extends StatefulWidget {
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    this.textStyle = const TextStyle(fontSize: 14),
    this.hintTextStyle = const TextStyle(fontSize: 14),
    this.textDirection = TextDirection.rtl,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
    this.prefix = const SizedBox(),
    this.obscureText = false,
  });

  final String title;
  final String hintText;
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextDirection textDirection;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final Widget prefix;
  final bool obscureText;

  @override
  State<TextFieldWithTitle> createState() => _TextFieldWithTitleState();
}

class _TextFieldWithTitleState extends State<TextFieldWithTitle> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: isDarkMode_ ? darkGray : lightGray,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        CustomTextField(
          textStyle: widget.textStyle,
          hintText: widget.hintText,
          hintTextStyle: widget.hintTextStyle,
          textDirection: widget.textDirection,
          textAlign: widget.textAlign,
          textInputType: widget.textInputType,
          prefix: widget.prefix,
          obscureText: widget.obscureText,
        ),
      ],
    );
  }
}
