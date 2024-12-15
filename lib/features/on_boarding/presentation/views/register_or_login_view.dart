import 'package:flutter/material.dart';

import 'widgets/register_or_login_view_body.dart';

class RegisterOrLoginView extends StatelessWidget {
  const RegisterOrLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: RegisterOrLoginViewBody(),
      ),
    );
  }
}
