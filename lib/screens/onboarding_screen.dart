import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/colors.dart' as custom_colors;
import '../models/onboarding_page.dart';
import '../widgets/onboarding_screen_widget.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  List<OnboardingPage> onboardingPagesList = [
    OnboardingPage(
        imageUrl: 'assets/images/onboarding_screen_image_1.png',
        title: 'Book Rides',
        subtitle:
            'Get attractive offers to enjoy your trip with a variety of ride options',
        isLastPage: false),
    OnboardingPage(
        imageUrl: 'assets/images/onboarding_screen_image_2.png',
        title: 'Plan Trips',
        subtitle: 'Plan your dreams and make your vision come to life with us',
        isLastPage: false),
    OnboardingPage(
        imageUrl: 'assets/images/onboarding_screen_image_3.png',
        title: 'Enjoy Life',
        subtitle: 'Enjoy every second of your trip and make it unforgettable',
        isLastPage: true),
  ];

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          children: [
            OnboardingScreenWidget(
                widget.onboardingPagesList[0], _pageController),
            OnboardingScreenWidget(
                widget.onboardingPagesList[1], _pageController),
            OnboardingScreenWidget(
                widget.onboardingPagesList[2], _pageController),
          ],
        ),
        Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                        activeDotColor: custom_colors.greenAccent,
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: Colors.black26),
                    onDotClicked: (index) {
                      _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    controller: _pageController,
                    count: widget.onboardingPagesList.length),
              ),
            ),
          ],
        )
      ],
    );
  }
}
