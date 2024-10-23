import 'package:flutter/material.dart';
import 'package:my_test1/base/widgets/text_style_third.dart';
import 'package:my_test1/base/widgets/text_style_foutrh.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String toptext;
  final String bottomtext;
  final bool? iscolor;
  final CrossAxisAlignment alignment;

  const AppColumnTextLayout(
      {super.key,
      required this.toptext,
      required this.bottomtext,
      required this.alignment,
      this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: toptext,
          isColor: iscolor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomtext,
          isColor: iscolor,
        ),
      ],
    );
  }
}
