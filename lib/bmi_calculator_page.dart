import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculatorPage(),
    );
  }
}

class BMICalculatorPage extends StatefulWidget {
  @override
  _BMICalculatorPageState createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  String _bmiResult = "BMI Rate";
  String _lastBmiResult = "Last BMI Rate";

  void _calculateBMI() {
    final double? weight = double.tryParse(_weightController.text);
    final double? height = double.tryParse(_heightController.text);

    if (weight != null && height != null && height > 0) {
      final double heightInMeters = height / 100;
      final double bmi = weight / (heightInMeters * heightInMeters);

      setState(() {
        _lastBmiResult = _bmiResult; // Save the last BMI result
        _bmiResult = bmi.toStringAsFixed(2); // Update the current BMI result
      });
    } else {
      setState(() {
        _bmiResult = "Invalid input!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculate BMI Rate',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Makes the AppBar title bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight :',
                suffixText: 'kg',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height :',
                suffixText: 'cm',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculateBMI,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Set the text color to white
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Text(
                _bmiResult,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Text(
                _lastBmiResult,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Table(
              border: TableBorder.all(color: Colors.green),
              children: const [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'BMI',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Weight status',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Below 18.5'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Underweight'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('18.5 - 24.9'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Normal weight'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('25.0 - 29.9'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Overweight'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('30.0 - 34.9'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Obesity class I'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('35.0 - 39.9'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Obesity class II'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Above 40'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Obesity class III'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
