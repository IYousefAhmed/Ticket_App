import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final bool? isColor;

  final TextAlign align;
  const HeadingText(
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
          ? AppStyles.headLineStyle3.copyWith(color: Colors.white)
          : AppStyles.headLineStyle3,
    );
  }
}
