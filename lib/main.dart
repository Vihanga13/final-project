import 'package:fitness_app/scan_meal_page.dart';
import 'package:flutter/material.dart';
// Ensure this import is correct

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
          ScanMealPage(), // Ensure this class is defined in daily_limit_page.dart
    );
  }
}
