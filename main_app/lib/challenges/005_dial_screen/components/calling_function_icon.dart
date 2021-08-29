import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallingFunctionIcon extends StatelessWidget {
  const CallingFunctionIcon({
    Key? key,
    required this.iconPath,
    required this.label,
    required this.press,
  }) : super(key: key);

  final String iconPath;
  final String label;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
        child: Column(
          children: [
            SvgPicture.asset(iconPath, color: Colors.white),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
