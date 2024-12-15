import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.imagesBro,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(child: Text('choose which one do you prefer')),
            const SizedBox(height: 100),
            const Center(
              child: HomeViewContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
