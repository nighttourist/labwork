import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lab4Page extends StatelessWidget {
  const Lab4Page({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 4 - ID Card'),
        backgroundColor: const Color.fromARGB(255, 10, 14, 238),
        foregroundColor: Colors.white70,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/rakib.jpg',
                            width: constraints.maxWidth * 0.65,
                            height: constraints.maxHeight * 0.4,
                          ),
                          const SizedBox(height: 10),
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
                                fontWeight: FontWeight.bold),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.facebook),
                                color: Colors.blue,
                                iconSize: 35,
                                onPressed: () {
                                  _launchUrl(
                                      'https://www.facebook.com/rakibulcse29373/');
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.camera_enhance_rounded),
                                color: Colors.pink,
                                iconSize: 35,
                                onPressed: () {
                                  _launchUrl('https://instagram.com');
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.business),
                                color: Colors.blueAccent,
                                iconSize: 35,
                                onPressed: () {
                                  _launchUrl('https://linkedin.com');
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.code),
                                color: Colors.black,
                                iconSize: 35,
                                onPressed: () {
                                  _launchUrl('https://github.com');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
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
              Container(
                color: Colors.deepPurpleAccent,
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('tel:+8801799761982');
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '+8801799761982',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
