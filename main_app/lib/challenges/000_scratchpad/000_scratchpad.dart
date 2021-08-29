import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Challenge000(),
    ));

class Challenge000 extends StatefulWidget {
  const Challenge000({Key? key}) : super(key: key);

  @override
  _Challenge000State createState() => _Challenge000State();
}

class _Challenge000State extends State<Challenge000> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('낙서 연습장'),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // color: Colors.amber,
        padding: EdgeInsets.all(20),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
      ),
    );
  }
}
