import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color(0xff071d41),
  100: const Color(0xff0c326f),
  200: const Color(0xff1351b4),
  300: const Color(0xff155bcb),
  400: const Color(0xff2670e8),
  500: const Color(0xff5992ed),
  600: const Color(0xff81aefc),
  700: const Color(0xffadcdff),
  800: const Color(0xffd4e5ff),
  900: const Color(0xffedf5ff),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade700;

  static MaterialColor customSwatchColor =
      MaterialColor(0xff2670e8, _swatchOpacity);
}
