import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: 'Challenge-01', debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child:
                    Text('0000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
            Spacer(),
            Row(
              children: [
                CalcButton(buttonText: '7'),
                CalcButton(buttonText: '8'),
                CalcButton(buttonText: '9'),
                CalcButton(buttonText: '/', buttonColor: Colors.grey.shade200),
              ],
            ),
            Row(
              children: [
                CalcButton(buttonText: '4'),
                CalcButton(buttonText: '5'),
                CalcButton(buttonText: '6'),
                CalcButton(buttonText: 'X', buttonColor: Colors.grey.shade200),
              ],
            ),
            Row(
              children: [
                CalcButton(buttonText: '1'),
                CalcButton(buttonText: '2'),
                CalcButton(buttonText: '3'),
                CalcButton(buttonText: '-', buttonColor: Colors.grey.shade200),
              ],
            ),
            Row(
              children: [
                CalcButton(buttonText: '.'),
                CalcButton(buttonText: '0'),
                CalcButton(buttonText: '00'),
                CalcButton(buttonText: '+', buttonColor: Colors.grey.shade200),
              ],
            ),
            Row(
              children: [
                CalcButton(buttonText: 'CLEAR', buttonColor: Colors.grey.shade200),
                CalcButton(buttonText: '=', buttonColor: Colors.grey.shade200),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;

  const CalcButton({Key? key, required this.buttonText, this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: buttonColor ?? Colors.transparent,
          ),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          )),
    );
  }
}
