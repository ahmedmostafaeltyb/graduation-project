import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/views/forget_password_view.dart';
import 'package:graduation_project/features/home/presentation/views/profile_view.dart';
import 'package:graduation_project/features/auth/presentation/views/signin_view.dart';
import 'package:graduation_project/features/auth/presentation/views/signup_view.dart';
import 'package:graduation_project/features/auth/presentation/views/verfiy_your_code_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/allneeds_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/blood_bank_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/custom_needed%20_Blood.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/custom_needed_plasma%20.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/needed_blood_platelets.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/register_or_login_view.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case RoutesName.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case RoutesName.registerOrLogin:
      return MaterialPageRoute(
          builder: (context) => const RegisterOrLoginView());
    case RoutesName.login:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case RoutesName.register:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case RoutesName.foregetPassword:
      return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView());
    case RoutesName.verfiyYourCode:
      return MaterialPageRoute(
          builder: (context) => const VerfiyYourCodeView());
    case RoutesName.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case RoutesName.homebody:
      return MaterialPageRoute(builder: (context) => const HomeViewBody());
    case RoutesName.bloodbank:
      return MaterialPageRoute(builder: (context) => const BloodBanks());
    case RoutesName.allneeds:
      return MaterialPageRoute(builder: (context) => const AllneedsView());
    case RoutesName.prefile:
      return MaterialPageRoute(builder: (context) => ProfileView());
    case RoutesName.needsblood:
      return MaterialPageRoute(builder: (context) => const CustomNeededBlood());
    case RoutesName.neededbloodplatelets:
      return MaterialPageRoute(
          builder: (context) => const NeededBloodPlatelets());
    case RoutesName.neededbloodplasma:
      return MaterialPageRoute(
          builder: (context) => const CustomNeededplasma());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }
}
