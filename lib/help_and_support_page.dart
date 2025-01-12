import 'package:fitness_app/about_us_page.dart';
import 'package:fitness_app/contact_support_page.dart';
import 'package:fitness_app/faq_page.dart';
import 'package:flutter/material.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How can we help you?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // FAQs Section
              _buildHelpOption(
                icon: Icons.question_answer,
                title: "FAQs",
                description: "Find answers to frequently asked questions.",
                onTap: () {
                  // Navigate to FAQs page or show FAQs dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQPage()),
                  );
                },
              ),

              const SizedBox(height: 16),

              // Contact Support Section
              _buildHelpOption(
                icon: Icons.contact_support,
                title: "Contact Support",
                description: "Get in touch with our support team.",
                onTap: () {
                  // Navigate to Contact Support page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactSupportPage()),
                  );
                },
              ),

              const SizedBox(height: 16),

              // Report a Problem Section
              _buildHelpOption(
                icon: Icons.report_problem,
                title: "Report a Problem",
                description: "Let us know if you're facing any issues.",
                onTap: () {
                  // Navigate to Report a Problem page or show dialog
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Report a Problem"),
                      content: const Text(
                          "Send us an email or contact support to report any issues you're facing."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              // About Us Section
              _buildHelpOption(
                icon: Icons.info,
                title: "About Us",
                description: "Learn more about our app and team.",
                onTap: () {
                  // Navigate to About Us page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
              ),

              const SizedBox(height: 32),

              // Contact Details
              const Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Email: support@yourapp.com",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                "Phone: +1 (555) 123-4567",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelpOption({
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 36, color: Colors.green),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
