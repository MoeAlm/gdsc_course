
import 'package:flutter/material.dart';

class LoginSimpleUi extends StatelessWidget {
  const LoginSimpleUi({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Image.asset('assets/images/login.png'),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Hello',
                  style: TextStyle(fontSize: 80, color: Colors.white),
                ),
                const Text(
                  'Welcome in our app app \n login to use the app',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        child: const Text('Login'),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)),
                        child: const Text('Sigin'),
                      ),
                    )
                  ],
                ),
                const Spacer()
              ],
            ),
          )
        ],
      ),
    );

  }
}
