import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
              'assets/NeutralMinimalistFlower.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            );
  }
}