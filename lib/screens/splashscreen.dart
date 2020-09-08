import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens/welcomescreen.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => welcomescreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mainimage1.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(1), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  width: 400,
                  height: 250.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200.withOpacity(0.5)),
                  child: new Center(
                    child: new Text('Food APP',
                        style: TextStyle(fontSize: 60,color: Colors.black)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
