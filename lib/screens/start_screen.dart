import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_app/app_colors/colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner :false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/NeutralMinimalistFlower.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text(
                "رايق",
                style: GoogleFonts.arefRuqaa(
                  color: AppColors.logoColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 180,
              child: Center(
                child: SizedBox(
                  height: 40,
                  width: 70,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: AppColors.whiteColor,
                    shape: 
                    RoundedRectangleBorder(
                     borderRadius: BorderRadiusGeometry.circular(70)
                    ),
                    hoverColor:AppColors.hoverColor,
                    child: Text(
                      'Start',
                      style: TextStyle(
                        color:AppColors.beigeColor,
                      ),
                    ),
                  ),
                ),
              ),
              
            ),
          ],
        ),

      ),
    );
  }
}
