import 'package:flutter/material.dart';

class DailyLimitsPage extends StatelessWidget {
  const DailyLimitsPage({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              const Text(
                "Your Daily Recommended Limits",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // Nutrition Row Section
              Column(
                children: [
                  // First Row: Proteins and Fats
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Proteins
                      Column(
                        children: const [
                          Icon(Icons.restaurant, size: 32, color: Colors.black),
                          SizedBox(height: 8),
                          Text(
                            "Proteins",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "65g",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),

                      // Fats
                      Column(
                        children: const [
                          Icon(Icons.cable, size: 32, color: Colors.black),
                          SizedBox(height: 8),
                          Text(
                            "Fats",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "50g",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24), // Space between rows

                  // Second Row: Carbohydrates
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.grain, size: 32, color: Colors.black),
                          SizedBox(height: 8),
                          Text(
                            "Carbohydrates",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "270g",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Highlighted Nutrition Feedback Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.yellow[200], // Highlighted yellow background
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nutrition Feedback",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Your protein intake is over the limit! Consider reducing protein intake at dinner. Ensure a balanced diet by including more vegetables and fruits. Drink plenty of water and avoid sugary drinks.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500, // Slightly bolder text
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height: 48), // Increased space below the feedback section

              // Buttons: Re-Scan and Save
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(140, 50),
                    ),
                    child: const Text(
                      "Re - Scan",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(140, 50),
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32), // More space below buttons

              // History Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "History",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
