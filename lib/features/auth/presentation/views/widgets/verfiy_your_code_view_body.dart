import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_otp_field.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class VerfiyYouCodeViewBody extends StatelessWidget {
  const VerfiyYouCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset(
              AppAssets.imagesVerfiyYourCode,
            ),
            const SizedBox(height: 24),
            Text(
              AppTexts.verfiyYourCodeView,
              style: TextStyles.interRegular18,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const CustomOtpField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1 / 3,
            ),
            CustomButton(
              onPressed: () {},
              text: AppTexts.verfiy,
            ),
          ],
        ),
      ),
    );
  }
}
