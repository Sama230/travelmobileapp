import 'dart:html';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:xplor_app/screens/accountscreens.dart';
import 'package:xplor_app/screens/auth_controller.dart';
import 'package:xplor_app/screens/favscreens.dart';
import 'package:xplor_app/screens/firstscreens.dart';
import 'package:xplor_app/screens/galleryscreens.dart';
import 'package:xplor_app/screens/loginscreens.dart';
import 'package:xplor_app/screens/picturescreens.dart';
import 'package:xplor_app/screens/profilescreens.dart';
import 'package:xplor_app/screens/signupscreens.dart';
import 'package:xplor_app/screens/welcomescreens.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('favorites');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        dividerColor: Colors.black,
      ),
      home: const welcomescreens(),
      routes: {
        firstscreens.id: (context) => firstscreens(),
        loginscreens.id: (context) => loginscreens(),
        signupscreens.id: (context) => signupscreens(),
        accountscreens.id: (context) => accountscreens(),
        profilescreens.id: (context) => profilescreens(),
        galleryscreens.id: (context) => galleryscreens(),
        welcomescreens.id: (context) => welcomescreens(),
        favscreens.id: (context) => favscreens(),
        picturescreens.id: (context) => picturescreens(),
      },
    );
  }
}
