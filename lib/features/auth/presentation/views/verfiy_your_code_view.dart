import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_texts.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/verfiy_your_code_view_body.dart';

import '../../../../core/utils/text_styles.dart';

class VerfiyYourCodeView extends StatelessWidget {
  const VerfiyYourCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: Text(
          AppTexts.verfiyYourCode,
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
        child: VerfiyYouCodeViewBody(),
      ),
    );
  }
}
