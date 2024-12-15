import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/manager/signin_cubit/singin_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/registration_form.dart';
import '../../manager/signin_cubit/signin_state.dart';
import 'custom_text_header.dart';

import 'signin_form.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninCubit, SigninCubitState>(
      listener: (context, state) {
        if (state is SigninCubitSuccess) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(RoutesName.home, (route) => false);
        } else if (state is SigninCubitError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        } else if (state is SigninCubitLoading) {
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const CustomHeader(
              title: 'BLOOD BANK',
              subtitle: 'Welcome Back!',
            ),
            const SizedBox(
              height: 20,
            ),
            const SigninForm(),
            const SizedBox(
              height: 30,
            ),
            RegistrationForm(
              onTap: () {
                Navigator.of(context).pushNamed(RoutesName.register);
              },
              text1: 'NotAmember!',
              text2: 'signup',
            )
          ],
        ),
      ),
    );
  }
}
