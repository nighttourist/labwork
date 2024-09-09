import 'package:flutter/material.dart';

class Lab2Page extends StatefulWidget {
  const Lab2Page({super.key});

  @override
  _Lab2PageState createState() => _Lab2PageState();
}

class _Lab2PageState extends State<Lab2Page> {
  List<String> days =
      List<String>.generate(31, (index) => (index + 1).toString());
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> years =
      List<String>.generate(100, (index) => (2024 - index).toString());

  String selectedDay = "1";
  String selectedMonth = "January";
  String selectedYear = "2024";

  String displayMessage = "";
  String name = "";
  String identity = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController identityController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    identityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 2 - single activity'),
        backgroundColor: const Color.fromARGB(255, 30, 80, 216),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Enter Your Birthday:',
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedDay,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedDay = newValue!;
                      });
                    },
                    items: days.map<DropdownMenuItem<String>>((String day) {
                      return DropdownMenuItem<String>(
                        value: day,
                        child: Text(day),
                      );
                    }).toList(),
                    hint: const Text('Day'),
                    isExpanded: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedMonth,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMonth = newValue!;
                      });
                    },
                    items: months.map<DropdownMenuItem<String>>((String month) {
                      return DropdownMenuItem<String>(
                        value: month,
                        child: Text(month),
                      );
                    }).toList(),
                    hint: const Text('Month'),
                    isExpanded: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedYear,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedYear = newValue!;
                      });
                    },
                    items: years.map<DropdownMenuItem<String>>((String year) {
                      return DropdownMenuItem<String>(
                        value: year,
                        child: Text(year),
                      );
                    }).toList(),
                    hint: const Text('Year'),
                    isExpanded: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: identityController,
              decoration: const InputDecoration(
                labelText: 'Enter your identity',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = nameController.text;
                  identity = identityController.text;

                  displayMessage =
                      "Your data is stored! Name: $name, Birthday: $selectedDay $selectedMonth $selectedYear, Identity: $identity";
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 20),
                foregroundColor: Colors.white,
              ),
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),
            Text(
              displayMessage,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
