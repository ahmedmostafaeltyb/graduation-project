import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/widgets/custom_allneeds_container.dart';

class AllneedsView extends StatelessWidget {
  const AllneedsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAllneedsContainer(
            text: 'Needed Blood ',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.needsblood);
              
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomAllneedsContainer(
            text: ' Needed Blood platelets',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.neededbloodplatelets);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomAllneedsContainer(
            text: ' Needed Blood plasma',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.neededbloodplasma);
            },
          ),
        ],
      ),
    );
  }
}
