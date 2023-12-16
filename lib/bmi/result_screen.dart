import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 180,
          width: 100,
          child: Text('Your BMI is: $result'),
        ),
      ),
    );
  }
}
