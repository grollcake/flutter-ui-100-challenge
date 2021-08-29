import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/calling_function_icon.dart';
import 'components/rounded_button.dart';
import 'components/user_dial_picture.dart';

void main() => runApp(MaterialApp(
      title: 'Dial screen',
      debugShowCheckedModeBanner: false,
      home: Challenge005(),
    ));

class Challenge005 extends StatelessWidget {
  const Challenge005({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF091A39),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '별이 별이 김찬별이',
              style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Calling...',
              style: TextStyle(color: Colors.white60, fontSize: 16),
            ),
            Spacer(),
            UserDialPic(picture: 'assets/images/005/images/calling_face.png'),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                CallingFunctionIcon(
                  label: 'Audio',
                  iconPath: 'assets/images/005/icons/Icon Mic.svg',
                  press: () {},
                ),
                CallingFunctionIcon(
                  label: 'Microphone',
                  iconPath: 'assets/images/005/icons/Icon Volume.svg',
                  press: () {},
                ),
                CallingFunctionIcon(
                  label: 'Video',
                  iconPath: 'assets/images/005/icons/Icon Video.svg',
                  press: () {},
                ),
                CallingFunctionIcon(
                  label: 'Message',
                  iconPath: 'assets/images/005/icons/Icon Message.svg',
                  press: () {},
                ),
                CallingFunctionIcon(
                  label: 'Add contact',
                  iconPath: 'assets/images/005/icons/Icon User.svg',
                  press: () {},
                ),
                CallingFunctionIcon(
                  label: 'Voice mail',
                  iconPath: 'assets/images/005/icons/Icon Voicemail.svg',
                  press: () {},
                ),
              ],
            ),
            Spacer(),
            RoundedButton(
              iconSrc: 'assets/images/005/icons/call_end.svg',
              bgColor: Colors.red,
              size: 64,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
