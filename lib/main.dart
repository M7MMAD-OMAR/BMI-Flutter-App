import 'package:dmi/homePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DMI APP",
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.white70,
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
          headline2: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}
