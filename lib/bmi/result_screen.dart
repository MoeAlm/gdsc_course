import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final result;

  ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 180,
          width: 100,
          child: Text('Your BMI is: $result'),
        ),
      ),
    );
  }
}
