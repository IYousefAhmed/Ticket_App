import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
// import 'package:my_test1/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigtext,
      required this.smalltext,
      required this.func});
  final String bigtext;
  final String smalltext;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: AppStyles.headLineStyle3,
        ),
        InkWell(
          onTap: func,
          child: Text(
            smalltext,
            style: AppStyles.textstyle.copyWith(color: AppStyles.primarycolor),
          ),
        )
      ],
    );
  }
}
