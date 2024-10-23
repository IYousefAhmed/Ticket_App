import 'package:flutter/material.dart';

Color primary = const Color(0xFF587daf);

class AppStyles {
  static Color primarycolor = primary;
  static Color bgcolor = const Color(0xFFeeedf2);
  static Color textcolor = const Color(0xFF3b3b3b);
  static Color ticketblue = const Color(0xFF526799);
  static Color ticketorange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color planColor = const Color(0xFFBFC2DF);
  static Color findTicketColor = const Color(0xD91130CE);
  static Color darkcolor = const Color(0xFF3AB8B8);
  static Color circlecolor = const Color(0xFF189999);
  static Color ticketcolor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0xFF8ACCF7);
  static Color planesecondcolor = const Color(0xFFBACCF7);
  static Color profileLocationColor = const Color(0xFFFEF4F3);
  static Color profileTextColor = const Color(0xFF526799);

  static TextStyle textstyle = TextStyle(
    fontSize: 16,
    color: textcolor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textcolor,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textcolor,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );

  static copyWith({required Color color}) {}
}
