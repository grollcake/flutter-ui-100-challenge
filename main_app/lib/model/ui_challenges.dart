import 'package:flutter/cupertino.dart';
import 'package:main_app/challenges/001_calculator.dart';

class UIChallenge {
  String title;
  Widget screen;

  UIChallenge({required this.title, required this.screen}): super();
}

List<UIChallenge> uiChallenges = [
  UIChallenge(title: 'calculator', screen: Challenge001())
];