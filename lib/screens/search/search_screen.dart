import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/widgets/app_double_text.dart';
import 'package:my_test1/base/widgets/app_routes.dart';
import 'package:my_test1/screens/search/widgets/app_text_icon.dart';
import 'package:my_test1/screens/search/widgets/app_ticket_tabs.dart';
import 'package:my_test1/screens/search/widgets/find_texts.dart';
import 'package:my_test1/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle2,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'All Tickets',
            secondTab: 'Hotels',
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigtext: "UpComing Flights",
            smalltext: "View All",
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
