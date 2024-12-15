import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/square_image_logo.dart';

class CustomRegisterView extends StatelessWidget {
  const CustomRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  hinttext: 'Email',
                  onSaved: (data) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hinttext: 'password',
                  onSaved: (data) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(onPressed: () {}, text: 'sign up'),
                const SizedBox(
                  height: 30,
                ),
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
                    SqureImage(imagepath: AppAssets.imagesAppleLogo)
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, RoutesName.login);
                      },
                      child: const Text(
                        'Sigin Now',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
