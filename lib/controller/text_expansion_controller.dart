import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpand() {
    isExpanded.value = !isExpanded.value;

    // Print('the value is       : $isExpanded');
  }
}
