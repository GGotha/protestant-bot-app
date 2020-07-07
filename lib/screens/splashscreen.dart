import 'dart:async';

import 'package:flutter/material.dart';
import 'package:protestant_bot/screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () => _screenLogin());
  }

  _screenLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DashboardPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color(0xff1da1f2)),
            ),
            Center(
                child: Text(
              'p'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 92,
                  decoration: TextDecoration.none),
            ))
          ],
        ));
  }
}
