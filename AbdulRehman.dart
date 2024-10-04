import 'package:flutter/material.dart';

class CustomDesign extends StatelessWidget {
  const CustomDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Section: Image with rounded borders and blue border
          Container(
            color: Colors.red,
            width: 350,
            height: 275,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Adjust for desired curve
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 7), // Blue border
                    borderRadius: BorderRadius.circular(20), // Match the border radius for consistency
                  ),
                  child: Image.asset(
                    'assets/rdr2.png', // Replace with your image path
                    fit: BoxFit.cover, // Ensure the image covers the entire area
                  ),
                ),
              ),
            ),
          ),

          // Section: Column of numbers with blue and green blocks behind
          Stack(
            alignment: Alignment.center,
            children: [
              // Blue background block
              Container(
                width: 100,
                height: 75,
                color: Colors.blue,
              ),
              // Green block positioned on top of blue
              Positioned(
                right: 50,
                child: Container(
                  width: 30,
                  height: 40,
                  color: Colors.green,
                ),
              ),
              // Numbers in red
              Container(
                width: 30,
                height: 200,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('1', style: TextStyle(color: Colors.white)),
                    Text('2', style: TextStyle(color: Colors.white)),
                    Text('3', style: TextStyle(color: Colors.white)),
                    Text('4', style: TextStyle(color: Colors.white)),
                    Text('5', style: TextStyle(color: Colors.white)),
                    Text('6', style: TextStyle(color: Colors.white)),
                    Text('7', style: TextStyle(color: Colors.white)),
                    Text('8', style: TextStyle(color: Colors.white)),
                    Text('9', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),

          // Text Section: Instructional Text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Bottom Section: Two circular images with labels (optional)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/leading_image.jpg'), // Replace with your image path
                    radius: 30,
                  ),
                  const Text(
                    'LEADING',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/trailing_image.jpg'), // Replace with your image path
                    radius: 30,
                  ),
                  const Text(
                    'TRAILING',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
