import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: 'Calculator 02', debugShowCheckedModeBanner: false, home: Challenge002()));

class Challenge002 extends StatefulWidget {
  const Challenge002({Key? key}) : super(key: key);

  @override
  _Challenge002State createState() => _Challenge002State();
}

class _Challenge002State extends State<Challenge002> {
  List<String> _buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'X',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'Ans',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.purple[100],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.purple[50],
                child: Align(
                  alignment: Alignment.center,
                  child: GridView.builder(
                    itemCount: _buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (_, idx) {
                      final colors = _getButtonProperties(_buttons[idx]);
                      return CalcButton(text: _buttons[idx], textColor: colors[0], backColor: colors[1]);
                    },
                    // shrinkWrap: true,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List _getButtonProperties(String btnText) {
    if ('%/X-+='.contains(btnText)) {
      return [Colors.white, Colors.deepPurple];
    } else if (btnText == 'C') {
      return [Colors.white, Colors.green];
    } else if (btnText == 'DEL') {
      return [Colors.white, Colors.red];
    } else {
      return [Colors.black, Colors.deepPurple[100]];
    }
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = _getButtonProperties(label);

    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colors[1],
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: colors[0]),
        ),
      ),
    );
  }

  List _getButtonProperties(String btnText) {
    if ('%/X-+='.contains(btnText)) {
      return [Colors.white, Colors.deepPurple];
    } else if (btnText == 'C') {
      return [Colors.white, Colors.green];
    } else if (btnText == 'DEL') {
      return [Colors.white, Colors.red];
    } else {
      return [Colors.black, Colors.deepPurple[100]];
    }
  }
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backColor,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color backColor;

  @override
  Widget build(BuildContext context) {
    final btnWidth = MediaQuery.of(context).size.width / 4 - 8;
    print("${MediaQuery.of(context).size.width}, $btnWidth");
    return Container(
      // margin: EdgeInsets.all(10),
      height: 50,
      width: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: backColor,
          elevation: 0.0,
        ),
      ),
    );
  }
}
