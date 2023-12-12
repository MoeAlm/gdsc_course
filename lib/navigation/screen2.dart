import 'package:flutter/material.dart';
import 'package:gdsc_flutter/navigation/screen1.dart';

class SecondScreen extends StatelessWidget {
  final name;
  const SecondScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('name: $name'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FirstScreen();
                  }));
                },
                child: Text('Go to first screen'))
          ],
        ),
      ),
    );
  }
}
