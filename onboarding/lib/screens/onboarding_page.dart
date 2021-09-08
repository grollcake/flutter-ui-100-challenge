import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/model/onbording_model.dart';
import 'package:onboarding/utils/sizeconfig.dart';
import 'package:onboarding/widgets/common_widgets.dart';

import 'main_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int pageNo = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageNo);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.white,
                  child: PageView.builder(
                    itemCount: onboardingContents.length,
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {
                        pageNo = value;
                      });
                    },
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
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    pageNo == onboardingContents.length - 1
                        ? SizedBox(
                            height: sizeV * 7,
                            width: sizeH * 100,
                            child: TextButton(
                              onPressed: () =>
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage())),
                              child: Text(
                                'Get Started',
                                style: kBodyTextStyle.copyWith(color: Colors.white),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                        : buildIndicator(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextNavBtn(
          label: 'Skip',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
          },
        ),
        Row(
          children: List.generate(onboardingContents.length, (index) => buildDotIndicator(index)),
        ),
        TextNavBtn(
          label: 'Next',
          onPressed: () {
            pageController.nextPage(
              duration: const Duration(microseconds: 400),
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }

  AnimatedContainer buildDotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 12,
      width: index == pageNo ? 24 : 12,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: index == pageNo ? kPrimaryColor : kSecondaryColor.withOpacity(.3),
      ),
    );
  }
}
