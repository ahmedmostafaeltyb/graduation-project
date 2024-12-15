import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'Drop_down_Button_Form_Field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController locationController;
  late TextEditingController phoneNumberController;
  late TextEditingController brithdataController;
  late String bloodType;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    locationController = TextEditingController();
    phoneNumberController = TextEditingController();
    brithdataController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    locationController.dispose();
    phoneNumberController.dispose();
    brithdataController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: nameController,
            hinttext: 'name',
            onSaved: (data) {
              nameController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: emailController,
            hinttext: 'email',
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
          CustomTextField(
            controller: locationController,
            hinttext: 'location',
            onSaved: (data) {
              locationController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: phoneNumberController,
            textInputType: TextInputType.phone,
            hinttext: 'phone number',
            onSaved: (data) {
              phoneNumberController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: brithdataController,
            hinttext: 'brithdata',
            onSaved: (data) {
              brithdataController.text = data!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Dropdownbuttonformfield(
            onChanged: (value) {
              bloodType = value!;
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'sign up',
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                await context
                    .read<SignupCubit>()
                    .createUserWithEmailAndPassword(
                      userName: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      phoneNumber: phoneNumberController.text,
                      location: locationController.text,
                      birthDate: brithdataController.text,
                      bloodType: bloodType,
                    );
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
