import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:tasks_app/screens/add_task_screen.dart';
import 'package:tasks_app/screens/home_screen.dart';
import 'package:tasks_app/screens/start_screen.dart';

void main() {
  runApp( 
    DevicePreview(
      enabled: true,
      tools: const [...DevicePreview.defaultTools,],
      builder: (context) => const AddTaskScreen(),
    ),
);

}
