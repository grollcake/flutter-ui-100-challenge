import 'package:flutter/material.dart';
import 'package:main_app/model/ui_challenges.dart';

// 이번에는 제대로 공부해보자

void main() => runApp(
      MaterialApp(
        title: 'UI-100-Challenge',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI-100-Challenge!'),
        elevation: 0.0,
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int idx) => Divider(),
        itemCount: uiChallenges.length,
        itemBuilder: (BuildContext context, int idx) {
          return ListTile(
            leading: Text(
              "$idx".padLeft(3, '0'),
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.grey[800]),
            ),
            title: Text(
              uiChallenges[idx].title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(uiChallenges[idx].description),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => uiChallenges[idx].screen,
                  ),
              );
            },
          );
        },
      ),
    );
  }
}
