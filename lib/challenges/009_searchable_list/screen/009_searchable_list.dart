import 'package:flutter/material.dart';

class Challenge009 extends StatefulWidget {
  const Challenge009({Key? key}) : super(key: key);

  @override
  _Challenge009State createState() => _Challenge009State();
}

class _Challenge009State extends State<Challenge009> {
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
