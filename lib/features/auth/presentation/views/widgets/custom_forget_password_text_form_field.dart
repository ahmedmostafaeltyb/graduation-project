import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomForgetPasswordTextFormField extends StatelessWidget {
  const CustomForgetPasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is requierd';
        }
        return null;
      },
      cursorColor: AppColors.primaryColor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'user@gmail.com',
        hintStyle: TextStyle(color: Colors.grey.shade500),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
    );
  }
}
