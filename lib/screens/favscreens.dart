import 'package:flutter/material.dart';
import 'package:xplor_app/screens/galleryscreens.dart';

class favscreens extends StatefulWidget {
  const favscreens({Key? key}) : super(key: key);
  static const String id = "favscreens";
  @override
  State<favscreens> createState() => _favscreensState();
}

List a = [
  "https://upload.wikimedia.org/wikipedia/commons/5/5e/Alexandria%27s_Bibliotheca.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/d/da/GD-EG-Alex-Mus%C3%A9eNat040.JPG",
  "https://upload.wikimedia.org/wikipedia/commons/c/c1/Stanly_Bridge_-_Alexandria.jpg",
];

class _favscreensState extends State<favscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1CDBA),
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor, //to make it as the background color
        elevation: 1,
        title: Text(
          'Favorites',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF69493A),
            fontSize: 20,
          ),
        ),
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
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              shape: Border.all(
                width: 5,
              ),
              elevation: 20,
              color: Colors.black45,
              child: Column(
                children: <Widget>[
                  Image.network(a[index]),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 50,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: a.length,
      ),
    );
  }
}
