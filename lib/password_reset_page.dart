import 'package:flutter/material.dart';

void main() {
  runApp(ResetPasswordApp());
}

class ResetPasswordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // Title
              const Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              // Old Password Field
              _buildPasswordField('Old Password'),
              const SizedBox(height: 20),
              // New Password Field
              _buildPasswordField('New Password'),
              const SizedBox(height: 20),
              // Confirm New Password Field
              _buildPasswordField('Confirm New Password'),
              const SizedBox(height: 40),
              // Confirm Button
              ElevatedButton(
                onPressed: () {
                  // Handle Confirm Button Press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 40.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Password Fields
  Widget _buildPasswordField(String hintText) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
