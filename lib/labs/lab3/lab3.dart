import 'package:flutter/material.dart';
import 'lab3_show_id.dart';

class Lab3Form extends StatefulWidget {
  const Lab3Form({super.key});

  @override
  _Lab3FormState createState() => _Lab3FormState();
}

class _Lab3FormState extends State<Lab3Form> {
  // Form controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 3 - User Information Form'),
        backgroundColor: const Color.fromARGB(255, 19, 221, 80),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Birthday',
                      hintText: "${selectedDate.toLocal()}".split(' ')[0],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: occupationController,
                decoration: const InputDecoration(labelText: 'Occupation'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lab3Result(
                        name: nameController.text,
                        birthday: selectedDate,
                        address: addressController.text,
                        occupation: occupationController.text,
                        phone: phoneController.text,
                      ),
                    ),
                  );
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
