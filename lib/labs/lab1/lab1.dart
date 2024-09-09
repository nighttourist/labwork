import 'package:flutter/material.dart';

class Lab1Page extends StatelessWidget {
  const Lab1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 1 - ID Card'),
        backgroundColor: const Color.fromARGB(255, 10, 14, 238),
        foregroundColor: Colors.white70, // AppBar color
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Image placed in the center-left
                      Image.asset(
                        'assets/images/rakib.jpg', // Load from assets
                        width: 300,
                        height: 350,
                      ),
                      const SizedBox(
                          height: 10), // Space between image and details
                      // Text details under the image
                      const Text(
                        'Md Rakibul Haque',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Department of ',
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Computer science & Engineering ',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Jahagirnagar University ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Parmanent Address: South Seota,Manikganj Sadar,Manikganj',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Email: rakibulcse29373@gmail.com',
                        style: TextStyle(fontSize: 18, color: Colors.teal),
                      ),
                      const Text(
                        'Date Of Birth: 15 June 2001',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),

                // Vertical Navigation Bar on the Right Side
                Container(
                  width: 80,
                  color: Colors.deepPurpleAccent,
                  child: const Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        '21 No Hall',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 20.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Footer with phone number
          Container(
            color: Colors.deepPurpleAccent,
            padding: const EdgeInsets.all(16.0),
            child: const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white, // Color of the icon
                    size: 24, // Size of the icon
                  ),
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    '+8801799761982',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
