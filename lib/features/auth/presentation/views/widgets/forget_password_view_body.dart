import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_texts.dart';
import 'package:graduation_project/core/utils/text_styles.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import 'custom_forget_password_text_form_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

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
              AppTexts.forgetPasswordView,
              style: TextStyles.interRegular18,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppTexts.enterYourEmail,
                style: TextStyles.interSemiBold24.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const CustomForgetPasswordTextFormField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1 / 2,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.verfiyYourCode);
              },
              text: AppTexts.send,
            ),
          ],
        ),
      ),
    );
  }
}
