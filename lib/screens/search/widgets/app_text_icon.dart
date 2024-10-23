import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.planColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.textstyle,
          ),
        ],
      ),
    );
  }
}
