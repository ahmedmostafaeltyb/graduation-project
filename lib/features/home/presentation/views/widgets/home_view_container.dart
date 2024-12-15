import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/widgets/custom_container.dart';

class HomeViewContainer extends StatelessWidget {
  const HomeViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          CustomContainer(
            imagePath: AppAssets.imagesWashhands,
            text: 'NEEDS',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.bloodbank);
            },
          ),
          const Spacer(
            flex: 2,
          ),
          CustomContainer(
            imagePath: AppAssets.imagesVector,
            text: 'Donor',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.bloodbank);
            },
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
