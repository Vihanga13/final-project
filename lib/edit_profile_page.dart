import 'package:flutter/material.dart';

void main() {
  runApp(EditProfileApp());
}

class EditProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfileScreen(),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
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
              const SizedBox(height: 20),
              // Title
              const Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Profile Picture
              GestureDetector(
                onTap: () {
                  // Handle Edit Photo Tap
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Edit Photo',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Name Field
              _buildTextField('Name'),
              const SizedBox(height: 20),
              // Age Field
              _buildTextField('Age'),
              const SizedBox(height: 20),
              // Gender Field
              _buildTextField('Gender'),
              const SizedBox(height: 20),
              // Email Field
              _buildTextField('Email'),
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
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Text Fields
  Widget _buildTextField(String hintText) {
    return TextField(
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
