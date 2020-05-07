
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MainVidget();
  }
}

class MainVidget extends StatefulWidget {
  MainVidgetState createState() => MainVidgetState();
}

class MainVidgetState extends State<MainVidget> {
  Color mainColor = Colors.white;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: mainColor,
          body: Stack(
            children: <Widget>[
              Center(
                child: Text('Hey there', style: TextStyle(fontSize: 35.0)),
              ),
              Listener(
                behavior: HitTestBehavior.translucent,
                onPointerDown: (e) {
                  setState(() {
                    mainColor = Color.fromRGBO(
                        Random().nextInt(254) + 1,
                        Random().nextInt(254) + 1,
                        Random().nextInt(254) + 1,
                        1);
                  });
                },
              ),
            ],
          ),
        ));
  }
}


