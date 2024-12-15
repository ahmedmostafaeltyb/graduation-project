import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/auth/presentation/manager/signin_cubit/singin_cubit.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            hinttext: 'Email',
            onSaved: (data) {
              emailController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: passwordController,
            hinttext: 'password',
            isPassword: true,
            onSaved: (data) {
              passwordController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Forget Password?'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Login',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<SigninCubit>().signinWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
