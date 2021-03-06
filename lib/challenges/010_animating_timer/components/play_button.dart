import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          elevation: 2.0,
          padding: EdgeInsets.zero,
          primary: Color(0xFFE5E7EB),
        ),
        child: Icon(
          icon,
          size: 80,
          color: Color(0xFF111827),
        ),
      ),
    );
  }
}
