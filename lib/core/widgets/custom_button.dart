import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = Colors.white, this.loadingWidget,
  });
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            backgroundColor: backgroundColor,
          ),
          onPressed: onPressed,
          child: loadingWidget ??
              Text(
                text,
                style: TextStyles.interSemiBold24.copyWith(
                  color: textColor,
                ),
              ),
        ),
      ),
    );
  }
}
