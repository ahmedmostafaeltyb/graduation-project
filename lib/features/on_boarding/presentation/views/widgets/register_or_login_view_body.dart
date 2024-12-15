import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/utils/text_styles.dart';

class RegisterOrLoginViewBody extends StatelessWidget {
  const RegisterOrLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Image(image: AssetImage(AppAssets.imagesRegisterOrLogin)),
          const SizedBox(height: 32),
          Text(
            'Donate Blood',
            textAlign: TextAlign.center,
            style: TextStyles.interSemiBold24,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'your donation can save many lives and make a difference in other lifes ',
              textAlign: TextAlign.center,
              style: TextStyles.interRegular18,
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesName.login);
            },
            text: 'Login',
          ),
          const SizedBox(height: 16),
          CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesName.register);
            },
            text: 'Register',
            textColor: AppColors.primaryColor,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          )
        ],
      ),
    );
  }
}
