import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback ontab;
  const CustomContainer(
      {super.key, required this.imagePath, required this.text, required this.ontab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontab ,
      child: Container(
        width: 145,
        height: 144,
        decoration: BoxDecoration(
          color: const Color(0xffFE8083),
          border: Border.all(
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
