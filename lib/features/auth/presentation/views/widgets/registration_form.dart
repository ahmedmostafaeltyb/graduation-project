import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/square_image_logo.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 2,
                color: AppColors.primaryColor,
              ),
            ),
            Text(' or continue with '),
            Expanded(
              child: Divider(
                thickness: 2,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SqureImage(imagepath: AppAssets.imagesGoogleLogo),
            SizedBox(
              width: 16,
            ),
            SqureImage(imagepath: AppAssets.imagesFacebookLogo),
            SizedBox(
              width: 16,
            ),
            SqureImage(imagepath: AppAssets.imagesAppleLogo),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                text2,
                style: const TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
