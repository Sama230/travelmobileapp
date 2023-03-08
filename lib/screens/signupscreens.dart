import 'dart:developer';

import 'package:xplor_app/screens/auth_controller.dart';
import 'package:xplor_app/screens/galleryscreens.dart';
import 'package:xplor_app/screens/loginscreens.dart';

import 'welcomescreens.dart';
import 'package:flutter/material.dart';
import 'package:xplor_app/Validations/validation.dart';

class signupscreens extends StatefulWidget {
  const signupscreens({Key? key}) : super(key: key);
  static const String id = "signupscreens";
  @override
  State<signupscreens> createState() => _signupscreensState();
}

class _signupscreensState extends State<signupscreens> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Center(
            child: Column(
              children: [
                Image.asset('logo.png'),
                //message to the user
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'welcome to egypt!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),

                // name textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Email ',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xFF69493A),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Password ',
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Color(0xFF69493A),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //confirm password

                SizedBox(height: 25),
                // sign up button

                //sign up button
                ElevatedButton(
                  onPressed: () {
                    AuthController.instance.register(
                        emailController.text.trim(),
                        passwordController.text.trim());
                    Navigator.pushNamed(context, galleryscreens.id);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF69493A), // Background color
                  ),
                  child: const Text(
                    'sign up  ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // do not have an account
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, loginscreens.id),
                  child: Text(
                    'Already have an account ',
                    style: TextStyle(
                      color: Color(0xff020202),
                      fontSize: 22,
                      //fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
