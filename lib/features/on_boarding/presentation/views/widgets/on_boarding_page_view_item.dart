import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/text_styles.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          image,
        ),
        const SizedBox(height: 32),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.interSemiBold24,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.interRegular18,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
        )
      ],
    );
  }
}
