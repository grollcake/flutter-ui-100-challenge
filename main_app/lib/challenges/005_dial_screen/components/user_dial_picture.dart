import 'package:flutter/material.dart';

class UserDialPic extends StatelessWidget {
  const UserDialPic({
    Key? key,
    required this.picture,
    this.size = 192,
  }) : super(key: key);

  final double size;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(26),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              Colors.white.withOpacity(0.02),
              Colors.white.withOpacity(0.1),
            ],
            stops: [0.5, 1.0],
          )),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: Image.asset(picture, fit: BoxFit.cover),
      ),
    );
  }
}
