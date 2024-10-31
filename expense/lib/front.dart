import 'package:flutter/material.dart';
import 'package:expense/select.dart';

void main() {
  runApp(Frontpage());
}

class Frontpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Buddy',
      home: HorizontalScrollImagePage(),
    );
  }
}

class HorizontalScrollImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to the next page after 10 seconds
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ExpenseTrackerApp()),
      );
    });

    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("BUDGET BUDDY"),
        backgroundColor:
            const Color.fromARGB(255, 199, 194, 194).withOpacity(0.7),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Arial",
          color: Color.fromARGB(255, 4, 5, 100),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: screenWidth *
                  1.5, // Make it larger than the screen for scrolling
              child: Stack(
                children: [
                  Image.asset(
                    'lib/front.jpg',
                    fit: BoxFit.cover,
                    width: screenWidth * 1.5, // Adjust width for responsiveness
                  ),
                  Positioned(
                    right: 20,
                    bottom: screenHeight * 0.15,
                    child: Text(
                      "SAVE TODAY, SMILE TOMORROW!!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.03, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: screenHeight * 0.1,
                    child: Text(
                      "SMALL SAVINGS, BIG DREAMS!!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: screenHeight * 0.05,
                    child: Text(
                      "INVEST IN YOUR FUTURE!!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
