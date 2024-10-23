import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_expansion_provider.g.dart';

@riverpod
class TextExpansionProvider extends _$TextExpansionProvider {
  @override
  bool build() {
    return false;
  }

// var selectedIndex = 0.obs;
  void toggeltext(bool toggel) {
    state = !toggel;
  }
}
