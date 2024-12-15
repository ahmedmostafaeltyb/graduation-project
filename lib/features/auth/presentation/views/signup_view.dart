import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/services/service_locator.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../data/repos/auth_repo.dart';
import '../manager/signup_cubit/signup_cubit.dart';
import 'widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'signup'),
      body: BlocProvider(
        create: (context) => SignupCubit(getIt<AuthRepo>()),
        child: const SignupViewBody(),
      ),
    );
  }
}
