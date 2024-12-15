import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class Dropdownbuttonformfield extends StatelessWidget {
  const Dropdownbuttonformfield({super.key, required this.onChanged});
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonFormField<String>(
        validator: (value) {
          if (value == null) {
            return 'field is requierd';
          }
          return null;
        },
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondColor),
          ),
          labelText: 'Type of Blood',
        ),
        items: ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']
            .map(
              (type) => DropdownMenuItem(
                value: type,
                child: Text(type),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
