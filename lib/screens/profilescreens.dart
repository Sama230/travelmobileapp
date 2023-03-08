import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:xplor_app/screens/accountscreens.dart';
import 'package:xplor_app/screens/auth_controller.dart';
import 'package:xplor_app/screens/favscreens.dart';
import 'package:xplor_app/screens/galleryscreens.dart';
import 'package:xplor_app/screens/loginscreens.dart';
import 'package:xplor_app/screens/signupscreens.dart';
import 'package:xplor_app/screens/welcomescreens.dart';

class profilescreens extends StatefulWidget {
  const profilescreens({Key? key}) : super(key: key);
  static const String id = "profilescreens";
  @override
  State<profilescreens> createState() => _profilescreensState();

  // sign user out method

}

class _profilescreensState extends State<profilescreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFE1CDBA),
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor, //to make it as the background color
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF69493A),
          ),
          onPressed: () {
            Navigator.pushNamed(context, galleryscreens.id);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Form(
          child: Center(
            child: Column(children: [
              //message to the user
              SizedBox(height: 50),
              Text(
                'Profile ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69493A),
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Stack(children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("avatar.png"),
                      )),
                ),
              ])),
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69493A),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'email@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69493A),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 140),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, accountscreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD1B7A1),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  'Account  Settings',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF69493A),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, favscreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD1B7A1),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  'Favorite',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF69493A),
                  ),
                ),
              ),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  AuthController.instance.logout();
                  Navigator.pushNamed(context, welcomescreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD1B7A1),
                  onPrimary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),

                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  ' Logout ',
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
