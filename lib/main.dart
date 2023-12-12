import 'package:flutter/material.dart';
import 'package:gdsc_flutter/navigation/screen1.dart';
import 'package:gdsc_flutter/bmi/bmi_screen.dart';
import 'package:gdsc_flutter/state_managment/counter.dart';


void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
    );
  }
}

