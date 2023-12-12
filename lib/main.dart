import 'package:flutter/material.dart';
import 'package:gdsc_flutter/screen1.dart';


void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

