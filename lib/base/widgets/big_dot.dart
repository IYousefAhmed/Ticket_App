import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : AppStyles.dotColor,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
