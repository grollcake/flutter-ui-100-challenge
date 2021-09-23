import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/model/onbording_model.dart';
import 'package:onboarding/screens/onboarding_widgets/onboarding_pageview.dart';
import 'package:onboarding/screens/primary_button.dart';
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
    // double sizeH = SizeConfig.blockSizeH!;
    // double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              // Sliding Pages
              Expanded(
                flex: 8,
                child: OnboardingPageView(
                  pageController: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageNo = value;
                    });
                  },
                ),
              ),
              // Bottom Navigator
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    pageNo == onboardingContents.length - 1
                        ? PrimaryButton(label: 'Get Started', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage())),)
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
