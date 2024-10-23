import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get.dart';
import 'package:my_test1/base/res/styles/app_styles.dart';
import 'package:my_test1/base/utils/all_json.dart';
// import 'package:my_test1/controller/text_expansion_controller.dart';

import '../../provider/text_expansion_provider.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    // print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primarycolor),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[index]["place"]),
              background: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    "assets/images/${hotelList[index]["image"]}",
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        hotelList[index]["place"],
                        style: TextStyle(shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: AppStyles.primarycolor,
                              offset: const Offset(2.0, 2.0))
                        ], fontSize: 24, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ExpandedTextWidget(
                  text: hotelList[index]["detail"],
                ),

                // child: Text(
                //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet.",
                //   textAlign: TextAlign.justify, // تنسيق النص
                // ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[index]["images"].length,
                  itemBuilder: (context, imagesindex) {
                    debugPrint('${hotelList[index]["images"][0]}}');
                    return Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.red,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(8), // إضافة حواف دائرية
                        child: Image.asset(
                          "assets/images/${hotelList[index]["images"][imagesindex]}",
                          fit: BoxFit.cover, // لملء الحاوية
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends ConsumerWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.watch(textExpansionProviderProvider);

    var textWidget = Text(
      text,
      maxLines: provider ? null : 6,
      overflow: provider ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      textWidget,
      GestureDetector(
        onTap: () {
          ref
              .watch(textExpansionProviderProvider.notifier)
              .toggeltext(provider);
        },
        child: Text(
          provider ? "Show less" : "Show more",
          style: AppStyles.textstyle.copyWith(color: AppStyles.primarycolor),
        ),
      )
    ]);
  }
}
