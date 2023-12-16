import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextButton(onPressed: (){
             setState(() {
               count++;
             });
           }, child: const Text('Plus')),
            Text('$count', style: const TextStyle(fontSize: 30),),
            TextButton(onPressed: (){
              setState(() {
                count--;
              });
            }, child: const Text('Minus'))
          ],
        ),
      ),
    );
  }
}
