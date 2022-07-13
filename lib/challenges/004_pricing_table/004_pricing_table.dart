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
              priceText: _renderPriceText(null, 0, null),
              desc: 'Free forever',
            ),
            MemberGradeCard(
              cardColor: Colors.green,
              gradeLevel: 'BRONZE',
              priceText: _renderPriceText(49, 29, null),
              desc: 'per month per project\nBilled annualy',
              freeTry: true,
            ),
            MemberGradeCard(
              cardColor: Colors.teal,
              gradeLevel: 'SILVER',
              priceText: _renderPriceText(null, 299, null),
              desc: 'per month per project\nBilled annualy',
              freeTry: true,
            ),
            MemberGradeCard(
              cardColor: Colors.orange,
              gradeLevel: 'GOLD',
              priceText: _renderPriceText(null, null, 'Contact US'),
              desc: 'per a quotation',
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderPriceText(int? originPrice, int? suggestPrice, String? priceMessage) {
    var originPriceStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, decoration: TextDecoration.lineThrough);
    var suggestPriceStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);
    var priceMessageStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white);

    List<Widget> _priceLabel = [];

    if (originPrice != null) {
      _priceLabel.add(Text('\$$originPrice', style: originPriceStyle));
      _priceLabel.add(SizedBox(width: 7));
    }
    if (suggestPrice != null) {
      _priceLabel.add(Text('\$', style: suggestPriceStyle.copyWith(fontSize: 20)));
      _priceLabel.add(SizedBox(width: 2));
      _priceLabel.add(Text('$suggestPrice', style: suggestPriceStyle));
    }
    if (priceMessage != null) {
      _priceLabel.add(Text('$priceMessage', style: priceMessageStyle));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: _priceLabel,
    );
  }
}
