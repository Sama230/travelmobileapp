// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xplor_app/screens/loginscreens.dart';
import 'package:xplor_app/screens/signupscreens.dart';

class firstscreens extends StatefulWidget {
  const firstscreens({Key? key}) : super(key: key);
  static const String id = "firstscreens";
  @override
  State<firstscreens> createState() => _firstscreensState();
}

class _firstscreensState extends State<firstscreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("first.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Center(
            child: Column(children: [
              //message to the user
              SizedBox(height: 50),
              Text(
                'Guide to explore ',
                style: TextStyle(
                  color: Color(0xFF69493A),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'EGYPT!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69493A),
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 140),

              ElevatedButton(
                onPressed: () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.pushNamed(context, loginscreens.id);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  // Background color
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF69493A),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, signupscreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                ),
                child: const Text(
                  'Sign up ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF69493A),
                  ),
                ),
              ),

              // sign in button
            ]),
          ),
        ),
      ),
    );
  }
}
