import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetApp(),
    );
  }
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Showcase'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image at the top
          Image.asset(
            'assets/rdr2.png',
            width: 450,
            height: 350,
            fit: BoxFit.cover,
          ),

          // Row with icons and text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.home, color: Colors.blue, size: 40),
                  SizedBox(height: 8),
                  Text('Home', style: TextStyle(fontSize: 16)),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.work, color: Colors.green, size: 40),
                  SizedBox(height: 8),
                  Text('Work', style: TextStyle(fontSize: 16)),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.school, color: Colors.orange, size: 40),
                  SizedBox(height: 8),
                  Text('School', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),

          // Elevated button at the bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton.icon(
              onPressed: () {
                // Action for the button
              },
              icon: const Icon(Icons.touch_app),
              label: const Text('Press Me'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
