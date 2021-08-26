import 'package:flutter/material.dart';

import 'components/circular_button.dart';

class Challenge003 extends StatelessWidget {
  const Challenge003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/chanbyul001.jpg',
          fit: BoxFit.cover,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "김찬별",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 0),
                Text(
                  '인생의 역작',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Incoming 00:02'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularButton(icon: Icons.mic, bgColor: Colors.white),
                    CircularButton(icon: Icons.call_end, bgColor: Colors.red),
                    CircularButton(icon: Icons.headphones, bgColor: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
