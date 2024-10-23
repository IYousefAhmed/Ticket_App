import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_test1/base/bottom_nav_bar.dart';
import 'package:my_test1/base/widgets/app_routes.dart';
import 'package:my_test1/screens/home/all_hotels.dart';
import 'package:my_test1/screens/home/all_tickets.dart';
import 'package:my_test1/screens/search/hotel_detail.dart';
import 'package:my_test1/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

//RUN: flutter pub run build_runner build
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
