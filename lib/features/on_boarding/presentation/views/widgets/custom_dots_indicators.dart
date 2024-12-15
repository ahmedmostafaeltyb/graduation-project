import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDotsIndicators extends StatelessWidget {
  const CustomDotsIndicators({
    super.key,
    required this.dotIndex,
  });
  final int dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: dotIndex,
      dotsCount: 3,
      decorator: DotsDecorator(
        size: const Size(10, 10),
        spacing: const EdgeInsets.symmetric(horizontal: 4),
        activeSize: const Size(20, 10),
        activeColor: AppColors.primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
