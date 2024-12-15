import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: PinCodeTextField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is requierd';
          }
          return null;
        },
        animationCurve: Curves.linear,
        animationType: AnimationType.scale,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        appContext: context,
        autoFocus: false,
        cursorColor: AppColors.primaryColor,
        cursorWidth: 2,
        cursorHeight: 25,
        showCursor: true,
        keyboardType: TextInputType.number,
        length: 6,
        obscureText: false,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 50,
          borderWidth: 1,
          activeColor: AppColors.primaryColor,
          inactiveColor: Colors.black.withOpacity(0.5),
          inactiveFillColor: Colors.grey.shade100,
          activeFillColor: Colors.grey.shade100,
          selectedColor: AppColors.primaryColor,
          selectedFillColor: Colors.white,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        onCompleted: (submitedCode) {
          // otpCode = submitedCode;
          log("Completed");
        },
        // onChanged: (value) {
        //   log(value);
        // },
      ),
    );
  }
}
