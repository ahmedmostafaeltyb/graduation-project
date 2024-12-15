import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/signup_form.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/square_image_logo.dart';
import '../../manager/signup_cubit/signup_state.dart';
import 'custom_text_header.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupCubitState>(
      listener: (context, state) {
        if (state is SignupCubitSuccess) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(RoutesName.home, (route) => false);
        } else if (state is SignupCubitError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        } else if (state is SignupCubitLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            },
          );
        }
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: 'BLOOD BANK',
              subtitle: 'Create your account',
            ),
            const SizedBox(height: 20),
            const SignupForm(),
            const SizedBox(height: 30),
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
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SqureImage(imagepath: AppAssets.imagesGoogleLogo),
                SizedBox(width: 16),
                SqureImage(imagepath: AppAssets.imagesFacebookLogo),
                SizedBox(width: 16),
                SqureImage(imagepath: AppAssets.imagesAppleLogo)
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Sigin Now',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
