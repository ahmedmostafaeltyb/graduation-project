import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_texts.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/forget_password_view_body.dart';

import '../../../../core/utils/text_styles.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: Text(
          AppTexts.forgetPassword,
          style: TextStyles.interSemiBold24.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ForgetPasswordViewBody(),
      ),
    );
  }
}
