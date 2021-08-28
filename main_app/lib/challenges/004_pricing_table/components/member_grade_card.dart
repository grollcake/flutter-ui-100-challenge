import 'package:flutter/material.dart';

class MemberGradeCard extends StatelessWidget {
  const MemberGradeCard({
    Key? key,
    required this.cardColor,
    required this.gradeLevel,
    required this.price,
    required this.desc,
  }) : super(key: key);

  final Color cardColor;
  final String gradeLevel;
  final int price;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 260,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CardUpperSide(cardColor: cardColor, gradeLevel: gradeLevel, price: price, desc: desc),
            CardLowerSide(cardColor: cardColor),
          ],
        ),
      ),
    );
  }
}

class CardUpperSide extends StatelessWidget {
  const CardUpperSide({
    Key? key,
    required this.cardColor,
    required this.gradeLevel,
    required this.price,
    required this.desc,
  }) : super(key: key);

  final double decoBoxSize = 20;
  final Color cardColor;
  final String gradeLevel;
  final int price;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        renderBackground(),
        renderContents(),
      ],
    );
  }

  Widget renderBackground() {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20)), color: cardColor),
        ),
        _decoratedBox(top: 0, right: 0, opacity: 0.8),
        _decoratedBox(top: 0, right: decoBoxSize, opacity: 0.4),
        _decoratedBox(top: decoBoxSize, right: 0, opacity: 0.4),
      ],
    );
  }

  Positioned _decoratedBox({required double top, required double right, required double opacity}) {
    final double _boxSize = 20.0;

    return Positioned(
      top: top,
      right: right,
      child: Container(
        width: _boxSize,
        height: _boxSize,
        color: Colors.white.withOpacity(opacity),
      ),
    );
  }

  Container renderContents() {
    return Container(
      height: 200,
      padding: EdgeInsets.only(top: 40, bottom: 20),
      child: Column(
        children: [
          Text(
            this.gradeLevel,
            style: TextStyle(fontSize: 14, color: Colors.white, letterSpacing: 2),
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                r'$',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
              SizedBox(width: 3),
              Text(
                this.price.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
              ),
            ],
          ),
          Spacer(flex: 1),
          Text(
            this.desc,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class CardLowerSide extends StatelessWidget {
  const CardLowerSide({
    Key? key,
    required this.cardColor,
  }) : super(key: key);

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      //width: double.infinity,
      alignment:Alignment.topCenter,
      decoration: BoxDecoration(color: cardColor.withOpacity(.2)),
      child: Column(
        children: [
          Spacer(flex: 1),
          SizedBox(
            height: 50,
            width: 180,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
