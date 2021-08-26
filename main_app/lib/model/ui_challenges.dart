import 'package:flutter/cupertino.dart';
import 'package:main_app/challenges/001_calculator.dart';
import 'package:main_app/challenges/002_calculator.dart';
import 'package:main_app/challenges/003_incoming_call_screen/003_incoming_call.dart';

class UIChallenge {
  @required
  String title;
  @required
  String description;
  @required
  Widget screen;

  UIChallenge({required this.title, required this.description, required this.screen}) : super();
}

List<UIChallenge> uiChallenges = [
  UIChallenge(title: 'Simple Calculator', description: 'Expanded의 활용', screen: Challenge001()),
  UIChallenge(title: 'Colorful Calculator', description: 'GridView.builder', screen: Challenge002()),
  UIChallenge(title: 'Incoming Call', description: 'Stack', screen: Challenge003()),
];