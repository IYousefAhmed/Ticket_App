import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_provider.g.dart';

@riverpod
class BottomNavBarNotifier extends _$BottomNavBarNotifier {
  @override
  int build() {
    return 0;
  }

// var selectedIndex = 0.obs;
  void onItemTapped(int index) {
    state = index;
  }
}
