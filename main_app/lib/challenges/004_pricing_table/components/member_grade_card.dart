import 'package:flutter/material.dart';

class MemberGradeCard extends StatelessWidget {
  const MemberGradeCard({
    Key? key,
    required this.cardColor, required this.gradeLevel, required this.price, required this.desc,
  }) : super(key: key);

  final double smallBoxSize = 20.0;
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
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20)), color: cardColor),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: smallBoxSize,
                    height: smallBoxSize,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: smallBoxSize,
                  child: Container(
                    width: smallBoxSize,
                    height: smallBoxSize,
                    color: Colors.white.withOpacity(.4),
                  ),
                ),
                Positioned(
                  top: smallBoxSize,
                  right: 0,
                  child: Container(
                    width: smallBoxSize,
                    height: smallBoxSize,
                    color: Colors.white.withOpacity(.4),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      Text(
                        this.gradeLevel,
                        style: TextStyle(fontSize: 14, color: Colors.white, letterSpacing: 2),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Text(
                        this.desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(color: cardColor.withOpacity(.2)),
              child: Column(
                children: [
                  SizedBox(height: 20),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}