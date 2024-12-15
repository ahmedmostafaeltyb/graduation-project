import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_texts.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/widgets/on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingPageViewItem(
          image: AppAssets.imagesOnBoarding1,
          title: AppTexts.onBoardingTitle1,
          subtitle: AppTexts.onBoardingSubtitle1,
        ),
        OnBoardingPageViewItem(
          image: AppAssets.imagesOnBoarding2,
          title: AppTexts.onBoardingTitle2,
          subtitle: AppTexts.onBoardingSubtitle2,
        ),
        OnBoardingPageViewItem(
          image: AppAssets.imagesOnBoarding3,
          title: AppTexts.onBoardingTitle3,
          subtitle: AppTexts.onBoardingSubtitle3,
        ),
      ],
    );
  }
}
