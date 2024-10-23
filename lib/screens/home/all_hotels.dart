import 'package:flutter/material.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/utils/all_json.dart';
import 'package:my_test1/base/widgets/app_routes.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgcolor,
        title: const Text('All Hotels'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // إضافة مسافة لتجنب مشكلة Overflow
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.75, // تغيير نسبة العرض إلى الارتفاع
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            var singleHotel = hotelList[index];
            return HotelGridView(hotel: singleHotel, index: index);
          },
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          "index": index,
        });
      },
      child: Container(
        // margin: EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppStyles.primarycolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/${hotel["image"]}",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                hotel["place"],
                style: AppStyles.headLineStyle1
                    .copyWith(color: AppStyles.kakiColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      hotel["destination"],
                      style: AppStyles.headLineStyle1
                          .copyWith(color: Colors.white),
                      overflow:
                          TextOverflow.ellipsis, // إضافة هذا لمنع تجاوز النص
                    ),
                  ),
                  const SizedBox(width: 5), // إضافة مسافة صغيرة
                  Text(
                    "\$${hotel["price"]}/night",
                    style: AppStyles.headLineStyle1
                        .copyWith(color: AppStyles.kakiColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
