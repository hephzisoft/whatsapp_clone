import 'package:flutter/material.dart';

extension BuildContextExtesnion on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  Brightness get screenBrightness => Theme.of(this).colorScheme.brightness;

  TextTheme get appTextTheme => Theme.of(this).textTheme;
}
