import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_drop_tybe_blood.dart';

class NeededBloodPlatelets extends StatelessWidget {
  const NeededBloodPlatelets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'NeededBloodPlatelets ',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 35, left: 30),
              child: Text(
                'Platelets type',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 30),
              child: Image.asset(AppAssets.imagestybeblood),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35, left: 30),
              child: Text(
                'Platelets unit Needed',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            CustomDropdown(
              items: const ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'],
              onChanged: (value) {},
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35, left: 30),
              child: Text(
                'Location',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            CustomDropdown(
              hintText: 'location',
              items: const [
                'Blood Bank  Smouhab',
                'Blood Bank  Alexandria',
                'Blood Bank Manshiya',
                'Blood Bank Mandara',
              ],
              onChanged: (value) {},
            ),
            // const CustomTextFiledCircle(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onPressed: () {}, text: 'Buy Now')
          ],
        ),
      ),
    );
  }
}
