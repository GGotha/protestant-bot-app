import 'package:flutter/material.dart';

import 'screens/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protestant APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff1da1f2),
        primaryColorDark: Color(0xff1da1f2),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
      // theme: ThemeData(primarySwatch: Color(0xff674172)),
    );
  }
}
