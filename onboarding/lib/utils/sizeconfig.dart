import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenHeight;
  static double? screenWidth;
  static double? blockSizeH; // 화면 높이의 1% 값
  static double? blockSizeV; // 화면 넓이의 1% 값

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    blockSizeH = screenWidth! / 100;
    blockSizeV = screenHeight! / 100;
  }

}