import 'package:flutter/material.dart';

class MealHistoryPage extends StatelessWidget {
  const MealHistoryPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                const Text(
                  "Meal History",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),

                // Days of the Week Grid
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildDayBox("SUN", "15 Aug", isSelected: true),
                    _buildDayBox("MON", "16 Aug"),
                    _buildDayBox("TUE", "17 Aug"),
                    _buildDayBox("WED", "18 Aug"),
                    _buildDayBox("THU", "19 Aug"),
                    _buildDayBox("FRI", "20 Aug"),
                    const SizedBox(), // Empty box to align SAT in the middle
                    _buildDayBox("SAT", "21 Aug"),
                    const SizedBox(), // Empty box for alignment
                  ],
                ),
                const SizedBox(height: 24),

                // Meal List
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildMealCard(
                      imagePath:
                          'assets/meal.jpg', // Replace with actual image path
                      mealName: "Breakfast",
                      calories: "350 kcal",
                    ),
                    const SizedBox(height: 16),
                    _buildMealCard(
                      imagePath:
                          'assets/meal.jpg', // Replace with actual image path
                      mealName: "Lunch",
                      calories: "650 kcal",
                    ),
                    const SizedBox(height: 16),
                    _buildMealCard(
                      imagePath:
                          'assets/meal.jpg', // Replace with actual image path
                      mealName: "Dinner",
                      calories: "200 kcal",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDayBox(String day, String date, {bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              date,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealCard({
    required String imagePath,
    required String mealName,
    required String calories,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Meal Image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath), // Replace with actual image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),

          // Meal Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mealName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                calories,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
