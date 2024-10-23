import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_test1/base/res/media.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/utils/all_json.dart';
import 'package:my_test1/base/widgets/app_coloum_text_layout.dart';
import 'package:my_test1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_test1/base/widgets/ticket_view.dart';
import 'package:my_test1/screens/search/widgets/app_ticket_tabs.dart';
import 'package:my_test1/screens/ticket/widgets/ticket_positined_circles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // Text(
              //   "Tickets",
              //   style: AppStyles.headLineStyle2,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              const AppTicketTabs(
                firstTab: 'UpComing',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketcolor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          toptext: "Flutter DB",
                          bottomtext: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          iscolor: true,
                        ),
                        AppColumnTextLayout(
                          toptext: "5221 364869",
                          bottomtext: "Passport",
                          alignment: CrossAxisAlignment.end,
                          iscolor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomdivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          toptext: "2465 65849153440",
                          bottomtext: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          iscolor: true,
                        ),
                        AppColumnTextLayout(
                          toptext: "B46859",
                          bottomtext: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          iscolor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomdivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                Text(
                                  ' ***2462',
                                  style: AppStyles.headLineStyle1,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payment Method",
                              style: AppStyles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnTextLayout(
                          toptext: "\$249.99",
                          bottomtext: "Price",
                          alignment: CrossAxisAlignment.end,
                          iscolor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                    color: AppStyles.ticketcolor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                        height: 70,
                        data: "https://www.dbestech.com",
                        drawText: false,
                        color: AppStyles.textcolor,
                        width: double.infinity,
                        barcode: Barcode.code128())),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
          const TicketPositionedCircle(
            pos: true,
          ),
          const TicketPositionedCircle(
            pos: null,
          ),
        ],
      ),
    );
  }
}
