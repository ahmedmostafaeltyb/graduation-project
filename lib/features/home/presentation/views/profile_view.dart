import 'package:flutter/material.dart';
import 'package:graduation_project/core/functions/get_current_user.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/custom_protifle_body.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final user = getCurrentUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      body: CustomProtifle(),
    );
  }
}
