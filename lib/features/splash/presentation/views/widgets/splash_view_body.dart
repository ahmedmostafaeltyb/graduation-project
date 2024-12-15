import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';

import '../../../../../core/cache/prefs.dart';
import '../../../../../core/constants/constatnts.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            AppAssets.imagesSplash,
            width: 350,
            height: 350,
          ),
        ),
      ],
    );
  }

  excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 1));
    if (Prefs.getBool(kIsOnBoardingViewed) == true) {
      log("seen is ${Prefs.getBool(kIsOnBoardingViewed).toString()}");
      Navigator.pushReplacementNamed(context, RoutesName.login);
    } else {
      Navigator.pushReplacementNamed(context, RoutesName.onBoarding);
    }
  }
}
