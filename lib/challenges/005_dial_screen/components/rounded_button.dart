import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.iconSrc,
    required this.bgColor,
    required this.press,
    this.size = 64,
  }) : super(key: key);

  final String iconSrc;
  final Color bgColor;
  final VoidCallback press;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TextButton(
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: Colors.white, height: size * 3 / 5),
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size),
          ),
        ),
      ),
    );
  }
}
