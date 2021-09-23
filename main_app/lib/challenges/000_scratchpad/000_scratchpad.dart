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
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'Learn Free',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 30),
          Text(
            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        hintText: 'Email...',
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawRainbow extends StatelessWidget {
  DrawRainbow({Key? key}) : super(key: key);

  final List<Color> _colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _colors.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _colors[index],
              ),
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
}
