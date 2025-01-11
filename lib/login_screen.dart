import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.green[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.fitness_center,
                      size: 40,
                      color: Colors.green,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'WEALTH SCAN',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'HEALTH & FITNESS',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Welcome Text
              const Text(
                'Hey there!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black, // Set the text color to black
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Register Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Let's create an account ?"),
                  TextButton(
                    onPressed: () {
                      // Navigate to the registration page
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
