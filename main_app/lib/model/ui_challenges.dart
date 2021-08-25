import 'package:flutter/cupertino.dart';
import 'package:main_app/challenges/001_calculator.dart';

class UIChallenge {
  @required String title;
  @required String description;
  @required Widget screen;

  UIChallenge({required this.title, required this.description, required this.screen}): super();
}

List<UIChallenge> uiChallenges = [
  UIChallenge(title: 'calculator', description: 'Expanded의 활용', screen: Challenge001())
];