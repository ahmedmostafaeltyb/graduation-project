import 'package:flutter/material.dart';
import 'package:graduation_project/core/functions/get_current_user.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/build_ProfileItem.dart';

class CustomProtifle extends StatelessWidget {
  final user = getCurrentUser();
  CustomProtifle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: AppColors.primaryColor,
            child: Text(
              user.name.substring(0, 1).toUpperCase(),
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          user.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          user.email,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 24),
        ProfileItem(
          title: "Phone Number",
          value: user.phoneNumber,
          icon: Icons.phone,
        ),
        ProfileItem(
          title: "Blood Type",
          value: user.bloodType,
          icon: Icons.bloodtype,
        ),
        ProfileItem(
          title: "Location",
          value: user.location,
          icon: Icons.location_on,
        ),
        ProfileItem(
          title: "Birth Date",
          value: user.birthDate,
          icon: Icons.calendar_today,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutesName.login);
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Logout",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
