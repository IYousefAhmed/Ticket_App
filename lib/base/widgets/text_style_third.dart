import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyles.headLineStyle1.copyWith(color: Colors.white)
          : AppStyles.headLineStyle1,
    );
  }
}
