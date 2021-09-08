import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class TextNavBtn extends StatelessWidget {
  const TextNavBtn({Key? key, required this.label, required this.onPressed}) : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          label,
          style: kBodyTextStyle,
        ),
      ),
    );
  }
}
