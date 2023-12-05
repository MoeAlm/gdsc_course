import 'package:flutter/material.dart';

void main() {
  runApp(LoginSimpleUi());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('AppBar'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.yellow,
              child: Text('Containter'),
            ),
            Container(
              color: Colors.yellow,
              child: Text('Containter'),
            ),
            Container(
              color: Colors.yellow,
              child: Text('Containter'),
            ),
            Container(
              color: Colors.yellow,
              child: Text('Containter'),
            ),
            Row(
              children: [
                Container(
                  color: Colors.yellow,
                  child: Text('Containter'),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('Containter'),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('Containter'),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('Containter'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginSimpleUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          children: [
            Image.asset('assets/images/login.png'),
            Spacer(),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 80, color: Colors.white),
                  ),
                  Text(
                    'Welcome in our app app \n login to use the app',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.white)),
                          child: Text('Sigin'),
                        ),
                      )
                    ],
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
