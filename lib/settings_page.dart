import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Settings List
                      _buildSettingItem(
                        icon: Icons.person_outline,
                        title: 'Edit Profile',
                        onTap: () {
                          // Handle Edit Profile tap
                        },
                      ),
                      _buildSettingItem(
                        icon: Icons.lock_outline,
                        title: 'Change Password',
                        onTap: () {
                          // Handle Change Password tap
                        },
                      ),
                      _buildSettingItem(
                        icon: Icons.palette_outlined,
                        title: 'Theme',
                        onTap: () {
                          // Handle Theme tap
                        },
                      ),
                      _buildSettingItem(
                        icon: Icons.help_outline,
                        title: 'Help and Support',
                        onTap: () {
                          // Handle Help and Support tap
                        },
                      ),
                      _buildSettingItem(
                        icon: Icons.privacy_tip_outlined,
                        title: 'Privacy Policy',
                        onTap: () {
                          // Handle Privacy Policy tap
                        },
                      ),
                      _buildSettingItem(
                        icon: Icons.logout,
                        title: 'Log Out',
                        onTap: () {
                          // Handle Log Out tap
                        },
                        textColor: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom Navigation Bar
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, size: 24, color: textColor ?? Colors.black87),
            const SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? Colors.black87,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              color: textColor ?? Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
