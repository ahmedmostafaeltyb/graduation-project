import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/cache/prefs.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../core/constants/constatnts.dart';
import '../../../../../core/routes/routes_name.dart';
import 'custom_dots_indicators.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnBoardingPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.20,
          right: 10,
          left: 10,
          child: CustomDotsIndicators(
            dotIndex:
                pageController.hasClients ? pageController.page!.round() : 0,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.10,
          left: 10,
          right: 10,
          child: CustomButton(
            text: 'Next',
            onPressed: () {
              if (pageController.page!.round() == 2) {
                Prefs.setBool(kIsOnBoardingViewed, true);
                log("seen is ${Prefs.getBool(kIsOnBoardingViewed).toString()}");
                Navigator.pushReplacementNamed(
                  context,
                  RoutesName.registerOrLogin,
                );
              }
              pageController.nextPage(
                duration: const Duration(
                  milliseconds: 400,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
          ),
        ),
      ],
    );
  }
}
