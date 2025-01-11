import 'package:flutter/material.dart';

void main() {
  runApp(DailyLimitsApp());
}

class DailyLimitsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DailyLimitsScreen(),
    );
  }
}

class DailyLimitsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Title
            const Text(
              'Your Daily Recommended Limits',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Recommended Limits Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLimitColumn('Proteins', '65g', Icons.restaurant),
                _buildLimitColumn('Fats', '50g', Icons.cable),
                _buildLimitColumn('Carbohydrates', '270g', Icons.grain),
              ],
            ),
            const SizedBox(height: 20),
            // Nutrition Feedback Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Your protein intake is over the limit! Consider reducing protein intake at dinner. Ensure a balanced diet by including more vegetables and fruits. Drink plenty of water and avoid sugary drinks.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Buttons Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                  ),
                  child: const Text(
                    'Re - Scan',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Spacer(),
            // History Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 32,
                ),
              ),
              child: const Text(
                'History',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      // Bottom Navigation Bar with Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                icon: const Icon(Icons.home, color: Colors.green),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Limits
  Widget _buildLimitColumn(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.black),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
