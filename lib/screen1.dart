import 'package:flutter/material.dart';
import 'package:gdsc_flutter/screen2.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Screen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                        return SecondScreen(name: 'Mohammed',);
                  }));
                },
                child: Text('Go to second screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Second Screen'),),
          ],
        ),
      ),
    );
  }
}
