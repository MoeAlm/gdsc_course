import 'package:flutter/material.dart';
import 'package:gdsc_flutter/navigation/screen2.dart';

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
            const Text('First Screen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                        return const SecondScreen(name: 'Mohammed',);
                  }));
                },
                child: const Text('Go to second screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Second Screen'),),
          ],
        ),
      ),
    );
  }
}
