import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_test1/base/res/media.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/widgets/app_coloum_text_layout.dart';
import 'package:my_test1/base/widgets/heading_text.dart';
import 'package:my_test1/base/widgets/text_style_third.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:
                      const DecorationImage(image: AssetImage(AppMedia.logo)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(text: "Book Tickets", isColor: false),
                  Text(
                    "New-York",
                    style: AppStyles.headLineStyle4,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyles.profileLocationColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppStyles.profileTextColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppStyles.primarycolor, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primarycolor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primarycolor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        const TextStyleThird(
                            text: "You'v got a new award", isColor: null),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF264CD2))),
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text("Accumulated miles", style: AppStyles.headLineStyle1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgcolor,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text("192802",
                    style: TextStyle(
                        fontSize: 45,
                        color: AppStyles.textcolor,
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",
                        style: AppStyles.headLineStyle4.copyWith(fontSize: 16)),
                    Text("16th July",
                        style: AppStyles.headLineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        toptext: "23 042",
                        bottomtext: "miles",
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppColumnTextLayout(
                        toptext: "AirLine Co",
                        bottomtext: "Received from",
                        alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        toptext: "24",
                        bottomtext: "Miles",
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppColumnTextLayout(
                        toptext: "McDonald's",
                        bottomtext: "Received from",
                        alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        toptext: "52 240",
                        bottomtext: "miles",
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppColumnTextLayout(
                        toptext: "DBestech",
                        bottomtext: "Received from",
                        alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Text("How to get more miles",
                      style: AppStyles.textstyle.copyWith(
                          color: AppStyles.primarycolor,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
