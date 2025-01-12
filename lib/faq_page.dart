import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  // FAQ data model
  final List<FAQItem> faqList = [
    FAQItem(
      question: 'How do I reset my password?',
      answer: 'To reset your password, go to the login page and click on "Forgot Password". Follow the instructions sent to your registered email address.',
    ),
    FAQItem(
      question: 'How can I contact customer support?',
      answer: 'You can reach our customer support team through:\n• Email: support@example.com\n• Phone: 1-800-123-4567\n• In-app chat support',
    ),
    FAQItem(
      question: 'Is my data secure?',
      answer: 'Yes, we take data security seriously. We use industry-standard encryption and security measures to protect your personal information.',
    ),
    FAQItem(
      question: 'How do I update the app?',
      answer: 'The app can be updated through your device\'s app store (Google Play Store for Android or App Store for iOS). Enable auto-updates for automatic installation.',
    ),
    FAQItem(
      question: 'Can I use the app offline?',
      answer: 'Yes, basic features are available offline. However, some features require an internet connection to sync and update data.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: faqList.length,
            itemBuilder: (context, index) {
              return FAQExpansionTile(faqItem: faqList[index]);
            },
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Still have questions? Contact us!',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

// FAQ Item data model
class FAQItem {
  final String question;
  final String answer;

  FAQItem({
    required this.question,
    required this.answer,
  });
}

// Custom ExpansionTile for FAQ items
class FAQExpansionTile extends StatelessWidget {
  final FAQItem faqItem;

  const FAQExpansionTile({
    Key? key,
    required this.faqItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        title: Text(
          faqItem.question,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              faqItem.answer,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}