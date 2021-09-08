import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/utils/sizeconfig.dart';

import 'main_page.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    required this.onPressed, required this.label,
  }) : super(key: key);

  double sizeV = SizeConfig.blockSizeV!;
  double sizeH = SizeConfig.blockSizeH!;
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeV * 7,
      width: sizeH * 100,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: kBodyTextStyle.copyWith(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
