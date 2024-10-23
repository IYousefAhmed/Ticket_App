import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool? isColor;

  final TextAlign align;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
          : AppStyles.headLineStyle4,
    );
  }
}
