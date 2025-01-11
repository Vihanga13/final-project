import 'package:flutter/material.dart';

void main() {
  runApp(MealHistoryApp());
}

class MealHistoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MealHistoryScreen(),
    );
  }
}

class MealHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meal History',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Date Grid
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1.2,
              children: [
                _buildDateTile(context, 'SUN', '15 Aug', isSelected: true),
                _buildDateTile(context, 'MON', '16 Aug'),
                _buildDateTile(context, 'TUE', '17 Aug'),
                _buildDateTile(context, 'WED', '18 Aug'),
                _buildDateTile(context, 'THU', '19 Aug'),
                _buildDateTile(context, 'FRI', '20 Aug'),
                _buildDateTile(context, 'SAT', '21 Aug'),
              ],
            ),
          ),
          // Meal List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildMealCard('Breakfast', '350 kcal', 'assets/breakfast.jpg'),
                _buildMealCard('Lunch', '650 kcal', 'assets/lunch.jpg'),
                _buildMealCard('Dinner', '200 kcal', 'assets/dinner.jpg'),
              ],
            ),
          ),
        ],
      ),
      // Floating Navigation Bar
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle QR scanner button press
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.qr_code_scanner,
            size: 36, color: Colors.black), // Black QR scan icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home,
                    color: Colors.black, size: 32), // Larger Home icon
                onPressed: () {
                  // Handle Home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.person,
                    color: Colors.black, size: 32), // Larger Profile icon
                onPressed: () {
                  // Handle Profile button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for a single date tile
  Widget _buildDateTile(BuildContext context, String day, String date,
      {bool isSelected = false}) {
    return GestureDetector(
      onTap: () {
        // Handle tap event (e.g., navigate to another screen or update state)
      },
      child: Container(
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
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for a single meal card
  Widget _buildMealCard(String meal, String calories, String imagePath) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Meal Image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Meal Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    calories,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
