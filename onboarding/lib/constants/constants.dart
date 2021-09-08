import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:onboarding/utils/sizeconfig.dart';

Color kPrimaryColor = const Color(0xfffc9d45);
Color kSecondaryColor = const Color(0xff573353);

TextStyle kTitleTextStyle = TextStyle(
  fontFamily: 'klasik',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: kSecondaryColor,
);

TextStyle kBodyTextStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);