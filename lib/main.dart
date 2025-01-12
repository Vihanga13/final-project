import 'package:fitness_app/goal_selection_page.dart';
import 'package:fitness_app/help_and_support_page.dart';
import 'package:fitness_app/landing_page.dart';
import 'package:fitness_app/meal_history_page.dart';
import 'package:fitness_app/privacy_page.dart';
import 'package:fitness_app/scan_meal_page_cholesterol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home:
          HelpAndSupportPage(), // Ensure this class is defined in daily_limit_page.dart
    );
  }
}
