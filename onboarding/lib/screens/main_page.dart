import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Center(child: Text('Main Page', style: kTitleTextStyle,),),
    );
  }
}
