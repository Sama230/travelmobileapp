import 'package:xplor_app/screens/galleryscreens.dart';
import 'package:xplor_app/screens/signupscreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_controller.dart';
import 'welcomescreens.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:provider/provider.dart';

class loginscreens extends StatefulWidget {
  const loginscreens({Key? key}) : super(key: key);
  static const String id = "loginscreens";
  @override
  State<loginscreens> createState() => _loginscreensState();
}

class _loginscreensState extends State<loginscreens> {
  //controllers
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
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hello Again!',
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
                // sign in button

                //sign in button
                ElevatedButton(
                  onPressed: () {
                    AuthController.instance.login(emailController.text.trim(),
                        passwordController.text.trim());
                    Navigator.pushNamed(context, galleryscreens.id);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF69493A), // Background color
                  ),
                  child: const Text(
                    'Login ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // do not have an account
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, signupscreens.id),
                  child: Text(
                    'Do not have an account yet',
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
