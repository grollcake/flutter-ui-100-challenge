import 'package:flutter/material.dart';

import 'components/member_grade_card.dart';

class Challenge004 extends StatelessWidget {
  const Challenge004({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pricing table'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Wrap(
          children: [
            MemberGradeCard(
              cardColor: Colors.deepPurpleAccent,
              gradeLevel: 'COMMUNITY',
              price: 0,
              desc: 'Free forever',
            ),
            MemberGradeCard(
              cardColor: Colors.green,
              gradeLevel: 'BRONZE',
              price: 29,
              desc: 'per month per project\nBilled annualy',
            ),
            MemberGradeCard(
              cardColor: Colors.teal,
              gradeLevel: 'SILVER',
              price: 299,
              desc: 'per month per project\nBilled annualy',
            ),
            MemberGradeCard(
              cardColor: Colors.orange,
              gradeLevel: 'GOLD',
              price: 599,
              desc: 'per a quotation',
            ),
          ],
        ),
      ),
    );
  }
}
