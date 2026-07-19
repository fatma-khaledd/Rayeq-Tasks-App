import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_app/app_colors/colors.dart' show AppColors;
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_app/widgets/custom_floating_button.dart';
import 'package:tasks_app/widgets/custom_image.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        body:
            Stack(
              children:[ 
              CustomImage(),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_left), iconSize: 25,),
                    SizedBox(width: 30,),
                    Text('New Task', style: GoogleFonts.storyScript(color: AppColors.greenColor,fontWeight: FontWeight.bold, fontSize: 50)),
                    SizedBox(width: 30,),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bars), iconSize: 30,),
                  ],
                ),
              )  ,
              Center(
                child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 55, width: 55),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 17,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          label: Text('Task Title'),
                          hintText: 'Write task name',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Add Task Title';
                          }
                          return null;
                        },
                      ),
                
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 17,
                      ),
                      child: TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          label: Text('Task Description'),
                          floatingLabelStyle: TextStyle(color: AppColors.greenColor),
                          hintText: "Add details...",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Add Task Description';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 70),
                          
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            CustomFloatingActionButton(
                              onPressed: () {},
                              data: 'Cancle',
                            ),
                            SizedBox(width: 20),
                            CustomFloatingActionButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {}
                              },
                              data: 'Save Task',
                            ),
                          ],
                        ),
                      ),
                    ),
                          
                    // SizedBox(height: 35.0, width: 35.0),
                  ],
                ),
                           ),
              ),
              ]
            ),
      ),
    );
  }
}
