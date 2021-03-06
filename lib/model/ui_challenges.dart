import 'package:flutter/cupertino.dart';
import 'package:main_app/challenges/001_simple_calculator/001_calculator.dart';
import 'package:main_app/challenges/002_colorful_calculator/002_colorful_calculator.dart';
import 'package:main_app/challenges/003_incoming_call_screen/003_incoming_call.dart';
import 'package:main_app/challenges/004_pricing_table/004_pricing_table.dart';
import 'package:main_app/challenges/005_dial_screen/005_dial_screen.dart';
import 'package:main_app/challenges/006_doctor_consultant/006_doctor_consultant.dart';
import 'package:main_app/challenges/007_login_screen/screens/007_login_screen.dart';
import 'package:main_app/challenges/008_color_check/008_color_check.dart';
import 'package:main_app/challenges/009_searchable_list/screen/009_searchable_list.dart';
import 'package:main_app/challenges/010_animating_timer/homescreen.dart';

class UIChallenge {
  final String title;
  final String description;
  final Widget screen;

  UIChallenge({required this.title, required this.description, required this.screen}) : super();
}

List<UIChallenge> uiChallenges = [
  UIChallenge(title: 'Animating clock', description: '애니메이션 효과과 적용된 초시계', screen: Challenge010()),
  UIChallenge(title: 'Searchable list', description: 'TextField, where, ', screen: Challenge009()),
  UIChallenge(title: 'Color Check', description: 'GridView.count, List.generate', screen: Challenge008()),
  UIChallenge(title: '아이디/패스워드 입력', description: 'TextField, Stack', screen: Challenge007()),
  UIChallenge(title: 'Doctor consultant', description: '이번에는 뭘 배우려나', screen: Challenge006()),
  UIChallenge(title: 'Dial screen', description: '우리 이쁜 김찬별이', screen: Challenge005()),
  UIChallenge(title: 'Pricing table', description: 'Stack, Positioned, Wrap', screen: Challenge004()),
  UIChallenge(title: 'Incoming Call', description: 'Stack, CircleButton', screen: Challenge003()),
  UIChallenge(title: 'Colorful Calculator', description: 'GridView.builder', screen: Challenge002()),
  UIChallenge(title: 'Simple Calculator', description: 'Expanded의 활용', screen: Challenge001()),
];
