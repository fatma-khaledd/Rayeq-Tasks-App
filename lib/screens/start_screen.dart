import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_app/app_colors/colors.dart';
import 'package:tasks_app/widgets/custom_floating_button.dart';
import 'package:tasks_app/widgets/custom_image.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            CustomImage(),
            Center(
              child: Text(
                "رايق",
                style: GoogleFonts.arefRuqaa(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                ),
              ),
            ),
            
          Positioned(
      bottom: 50,
      left: 180,
      child: Center(
          child:
           CustomFloatingActionButton(
                    data: 'start',
                    onPressed: () {},
                  ),
        )
        )
          ],
        ),
      ),
    );
  }
}
