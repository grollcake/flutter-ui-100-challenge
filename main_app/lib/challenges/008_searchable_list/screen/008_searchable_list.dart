import 'package:flutter/material.dart';

class Challenge008 extends StatefulWidget {
  const Challenge008({Key? key}) : super(key: key);

  @override
  _Challenge008State createState() => _Challenge008State();
}

class _Challenge008State extends State<Challenge008> {
  _onSearchKeyword(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title: Container(
          height: 38.0,
          child: TextField(
            onChanged: _onSearchKeyword,
            style: TextStyle(color: Colors.grey.shade300),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              hintText: 'Search user',
              hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade500),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
              fillColor: Colors.grey[850],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
      ),
    );
  }
}
