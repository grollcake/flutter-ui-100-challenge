import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/model/onbording_model.dart';
import 'package:onboarding/utils/sizeconfig.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({Key? key, required this.pageController, required this.onPageChanged}) : super(key: key);

  final PageController pageController;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {

  double sizeH = SizeConfig.blockSizeH!;
  double sizeV = SizeConfig.blockSizeV!;

    return Container(
      color: Colors.white,
      child: PageView.builder(
        itemCount: onboardingContents.length,
        controller: pageController,
        onPageChanged: (value) => onPageChanged(value),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                onboardingContents[index].title,
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: sizeV * 50,
                width: sizeH * 80,
                // color: Colors.green,
                child: Image.asset(
                  onboardingContents[index].image,
                  fit: BoxFit.contain,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: kBodyTextStyle,
                  children: [
                    const TextSpan(text: 'WE CAN '),
                    TextSpan(text: 'HELP YOU ', style: TextStyle(color: kPrimaryColor)),
                    const TextSpan(text: 'TO BE A BETTER VERSION OF '),
                    TextSpan(text: 'YOURSELF', style: TextStyle(color: kPrimaryColor)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

