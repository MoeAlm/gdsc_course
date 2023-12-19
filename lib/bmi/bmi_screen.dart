import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gdsc_flutter/bmi/result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  var height = 80.0;
  double weight = 0;
  int age = 0;
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bmi Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale ? Colors.green : Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 40),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale ? Colors.grey : Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 40),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                  Slider(
                      min: 80,
                      max: 240,
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                          print(height);
                        });
                      })
                ],
                            ),
                          ),
              )),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('weight',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white)),
                            Text(
                              '$weight',
                              style:
                                  const TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'fab1',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  heroTag: 'fab2',
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Age',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white)),
                            Text(
                              '$age',
                              style:
                                  const TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'fab3',
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  heroTag: 'fab4',
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: MaterialButton(
              color: Colors.redAccent,
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultScreen(result: result.round());
                }));
              },
              child: const Text(
                'Claculate',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
