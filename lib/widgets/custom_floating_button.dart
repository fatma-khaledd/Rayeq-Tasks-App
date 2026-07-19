import 'package:flutter/material.dart';
import 'package:tasks_app/app_colors/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String data;
  VoidCallback? onPressed;

 CustomFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return  
     SizedBox(
          height: 50,
          width: 90,
          child:FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(60),
            ),
            hoverColor: AppColors.greenColor,

            child: Text(data, style: TextStyle(color: AppColors.beigeColor,fontSize: 15)),
          )
    );
  }
}
  
