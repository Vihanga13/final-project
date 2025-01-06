import 'package:flutter/material.dart';

class GoalSelectionPage extends StatelessWidget {
  const GoalSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'What goal do you\nhave in mind?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              
              // Goal Options
              _buildGoalOption(
                icon: '👤',
                title: 'Lose weight',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              
              _buildGoalOption(
                icon: '⚖️',
                title: 'Maintain weight',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              
              _buildGoalOption(
                icon: '💪',
                title: 'Gain weight',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              
              _buildGoalOption(
                icon: '🏃',
                title: 'Diabetic Patient',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              
              _buildGoalOption(
                icon: '🫀',
                title: 'Cholesterol Patient',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildGoalOption({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  icon,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}