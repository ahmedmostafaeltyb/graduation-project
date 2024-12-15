import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            color: AppColors.primaryColor, // استخدم اللون الأساسي هنا
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 10), // إضافة مسافة بين النصين
        Align(
          alignment: Alignment.center,
          child: Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
