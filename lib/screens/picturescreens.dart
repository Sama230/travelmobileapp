import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:xplor_app/screens/galleryscreens.dart';

class picturescreens extends StatefulWidget {
  const picturescreens({Key? key}) : super(key: key);
  static const String id = "picturescreens";
  @override
  State<picturescreens> createState() => _picturescreensState();
}

// List a = [
//   "https://upload.wikimedia.org/wikipedia/commons/5/5e/Alexandria%27s_Bibliotheca.jpg",
//   "https://upload.wikimedia.org/wikipedia/commons/d/da/GD-EG-Alex-Mus%C3%A9eNat040.JPG",
//   "https://upload.wikimedia.org/wikipedia/commons/c/c1/Stanly_Bridge_-_Alexandria.jpg",
// ];

class _picturescreensState extends State<picturescreens> {
  int mycount = 0;
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            bottom: 30,
          ),
        ),
        Card(
          elevation: 10,
          child: Column(
            children: <Widget>[
              Image.asset("stanley.jpg"),
              Row(
                children: <Widget>[
                  Text(
                    "Stanley Bridge ",
                    style: GoogleFonts.pacifico(fontSize: 40),
                  ),
                  Icon(
                    Icons.rate_review_outlined,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Alexandria,Egypt",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(
                    "price: \$7",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  FivePointedStar(
                    onChange: (count) {
                      setState(() {
                        mycount = count;
                      });
                    },
                  ),
                  Text(
                    mycount.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 30,
          ),
        ),
        Text(
          "Map",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        Card(
          elevation: 20,
          child: Column(
            children: <Widget>[
              Image.asset("map.png"),
            ],
          ),
        ),
      ])),
    );
  }
}
