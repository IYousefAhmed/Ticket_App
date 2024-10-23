import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/widgets/app_coloum_text_layout.dart';
import 'package:my_test1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_test1/base/widgets/big_circle.dart';
import 'package:my_test1/base/widgets/big_dot.dart';
import 'package:my_test1/base/widgets/text_style_foutrh.dart';
import 'package:my_test1/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        child: Column(
          // mainAxsisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketblue
                      : AppStyles.ticketcolor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomdivider: 6,
                                width: 3,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planesecondcolor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              height: 20,
              color: isColor == null
                  ? AppStyles.ticketorange
                  : AppStyles.ticketcolor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomdivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketorange
                      : AppStyles.ticketcolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        toptext: ticket["date"],
                        bottomtext: "DATE",
                        alignment: CrossAxisAlignment.start,
                        iscolor: isColor,
                      ),
                      AppColumnTextLayout(
                        toptext: ticket["departure_time"],
                        bottomtext: "DepartureTime",
                        alignment: CrossAxisAlignment.center,
                        iscolor: isColor,
                      ),

                      AppColumnTextLayout(
                        toptext: ticket["number"],
                        bottomtext: "number",
                        alignment: CrossAxisAlignment.end,
                        iscolor: isColor,
                      ),

                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00 AM",
                      //   style: AppStyles.headLineStyle1
                      //       .copyWith(color: Colors.white),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "23",
                      //   style: AppStyles.headLineStyle1
                      //       .copyWith(color: Colors.white),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Data",
                  //       style: AppStyles.headLineStyle1
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Departure time",
                  //       style: AppStyles.headLineStyle1
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Number",
                  //       style: AppStyles.headLineStyle1
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
