import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onSaved,
    this.hinttext,
    this.controller,
    this.textInputType = TextInputType.text,
     this.isPassword = false, 
  });
  final String? hinttext;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  final TextInputType? textInputType;
   final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
          obscureText: isPassword,
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is requierd';
          }
          return null;
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          labelText: hinttext,
          hintStyle: const TextStyle(color: AppColors.secondColor),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
        ),
      ),
    );
  }
}
