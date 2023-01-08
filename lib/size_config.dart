import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidht;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidht = _mediaQueryData!.size.width;
    blockSizeHorizontal = screenWidht! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}