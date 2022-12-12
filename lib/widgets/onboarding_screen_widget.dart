import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;
import '../screens/main_menu_screen.dart';
import '../widgets/full_width_rounded_button.dart';
import '../models/onboarding_page.dart';

class OnboardingScreenWidget extends StatelessWidget {
  OnboardingPage data;
  PageController nextPageHandler;

  OnboardingScreenWidget(this.data, this.nextPageHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: custom_colors.backgroundColor,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Expanded(
                  child: Center(
                child: Container(
                  width: 280,
                  height: 280,
                  child: Image.asset(
                    data.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                //color: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      data.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 44,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          height: 1),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        data.subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    const Spacer(),
                    data.isLastPage
                        ? FullWidthRoundedButton(
                            'Get Started',
                            custom_colors.greenAccent,
                            MainMenuScreen.routeName,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .pushNamed(MainMenuScreen.routeName),
                                child: Container(
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: custom_colors.greenAccent
                                            .withOpacity(0.7)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => nextPageHandler.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: custom_colors.greenAccent),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.arrow_right_alt_outlined,
                                        color: custom_colors.greenAccent,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
