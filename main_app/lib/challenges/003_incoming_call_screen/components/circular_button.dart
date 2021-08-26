import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key? key, required this.icon, required this.bgColor}) : super(key: key);
  @required
  final IconData icon;
  @required
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: TextButton(
        onPressed: () {},
        child: Icon(
          this.icon,
          color: this.bgColor != Colors.white ? Colors.white : Colors.black54,
        ),
        style: TextButton.styleFrom(
          backgroundColor: this.bgColor,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(64),
          // ),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
