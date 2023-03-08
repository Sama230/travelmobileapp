import 'package:flutter/material.dart';
import 'package:xplor_app/screens/firstscreens.dart';
import 'package:xplor_app/screens/galleryscreens.dart';
import 'package:xplor_app/screens/loginscreens.dart';
import 'package:xplor_app/screens/accountscreens.dart';
import 'package:xplor_app/screens/profilescreens.dart';

class welcomescreens extends StatefulWidget {
  const welcomescreens({Key? key}) : super(key: key);
  static const String id = "welcomescreens";
  @override
  State<welcomescreens> createState() => _welcomescreensState();
}

class _welcomescreensState extends State<welcomescreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("background.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Form(
        child: Column(
          children: [
            Image.asset('logo.png'),
            SizedBox(height: 470),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, firstscreens.id);
                },
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF69493A),
                elevation: 0,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
