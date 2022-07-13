import 'package:flutter/material.dart';

class Challenge007 extends StatefulWidget {
  const Challenge007({Key? key}) : super(key: key);

  @override
  _Challenge007State createState() => _Challenge007State();
}

class _Challenge007State extends State<Challenge007> {

  var borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    // borderSide: BorderSide(
    //   color: Colors.purple,
    //   width: 1.0,
    // ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('아이디/패스워드 입력'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2.0),
                  prefixIcon: Icon(Icons.person_outline),
                  hintText: '사용자명',
                  fillColor: Colors.white,
                  filled: true,
                  border: borderStyle,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2.0),
                  prefixIcon: Icon(Icons.vpn_key),
                  suffixIcon: Icon(Icons.accessibility),
                  hintText: '비밀번호',
                  fillColor: Colors.white,
                  filled: true,
                  border: borderStyle,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepPurple,
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 24,
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
