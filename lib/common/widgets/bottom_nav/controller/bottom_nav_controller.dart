import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_controller.g.dart';
@riverpod
class BottomNav extends _$BottomNav {

  int build() {
    return 0;
  }

  void changeIndex(int value) {
    state = value;
  }
}
