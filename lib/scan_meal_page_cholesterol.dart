import 'package:flutter/material.dart';

class ScanMealPagecholesterol extends StatelessWidget {
  const ScanMealPagecholesterol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Floating Action Button
      floatingActionButton: SizedBox(
        height: 80, // Increased height
        width: 80, // Increased width
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.qr_code_scanner,
            color: Colors.black, // Scanner icon is black
            size: 36, // Increased icon size
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 35, // Increased icon size
                icon: const Icon(Icons.home, color: Colors.black), // Black icon
              ),
              IconButton(
                onPressed: () {},
                iconSize: 35, // Increased icon size
                icon:
                    const Icon(Icons.person, color: Colors.black), // Black icon
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            // Profile picture and name
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/profile_image.png'), // Replace with actual asset path
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Vihanga Nilusha',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Space to slightly push Scan Meal section down
            const SizedBox(height: 100),

            // Scan meal section
            Column(
              children: [
                Container(
                  height: 150, // Increased height
                  width: 150, // Increased width
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius:
                        BorderRadius.circular(20), // Larger corner radius
                  ),
                  child: const Icon(
                    Icons.apple,
                    size: 80, // Increased icon size
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16), // Increased space below container
                const Text(
                  'Scan Meal',
                  style: TextStyle(
                    fontSize: 20, // Increased font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Add Spacer or SizedBox to push the buttons section down
            const SizedBox(height: 80), // Adjust the height as needed

            // Buttons for diabetic food options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Best Food For Cholesterol Patient',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Not Good For Cholesterol Patient',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
                height: 32), // Space before the bottom navigation bar
          ],
        ),
      ),
    );
  }
}
