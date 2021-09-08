import 'package:flutter/cupertino.dart';
import 'package:main_app/challenges/000_scratchpad/000_scratchpad.dart';
import 'package:main_app/challenges/001_simple_calculator/001_calculator.dart';
import 'package:main_app/challenges/002_colorful_calculator/002_colorful_calculator.dart';
import 'package:main_app/challenges/003_incoming_call_screen/003_incoming_call.dart';
import 'package:main_app/challenges/004_pricing_table/004_pricing_table.dart';
import 'package:main_app/challenges/005_dial_screen/005_dial_screen.dart';
import 'package:main_app/challenges/006_doctor_consultant/006_doctor_consultant.dart';

class UIChallenge {
  final String title;
  final String description;
  final Widget screen;

  UIChallenge({required this.title, required this.description, required this.screen}) : super();
}

List<UIChallenge> uiChallenges = [
  UIChallenge(title: 'Scratch pad', description: '낙서 연습장', screen: Challenge000()),
  UIChallenge(title: 'Simple Calculator', description: 'Expanded의 활용', screen: Challenge001()),
  UIChallenge(title: 'Colorful Calculator', description: 'GridView.builder', screen: Challenge002()),
  UIChallenge(title: 'Incoming Call', description: 'Stack, CircleButton', screen: Challenge003()),
  UIChallenge(title: 'Pricing table', description: 'Stack, Positioned, Wrap', screen: Challenge004()),
  UIChallenge(title: 'Dial screen', description: '우리 이쁜 김찬별이', screen: Challenge005()),
  UIChallenge(title: 'Doctor consultant', description: '이번에는 뭘 배우려나', screen: Challenge006()),
];

