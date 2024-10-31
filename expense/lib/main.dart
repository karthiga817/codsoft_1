import 'package:expense/front.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Buddy',
      home: CenteredImagePage(),
    );
  }
}

class CenteredImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Frontpage()),
      );
    });

    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(
            "lib/icons.png", // Ensure this path is correct
            width: 200, // Set desired width
            height: 200, // Set desired height
          ),
        ),
      ),
    );
  }
}
