import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/features/auth/presentation/manager/signin_cubit/singin_cubit.dart';
import '../../../../core/services/service_locator.dart';
import '../../data/repos/auth_repo.dart';
import 'widgets/singin_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'signin'),
      body: BlocProvider(
        create: (context) => SigninCubit(
          getIt<AuthRepo>(),
        ),
        child: const SigninViewBody(),
      ),
    );
  }
}
