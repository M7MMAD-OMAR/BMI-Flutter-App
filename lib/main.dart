import 'package:dmi/homePage.dart';
import 'package:dmi/result.dart';
import 'package:flutter/material.dart';

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
        canvasColor: Colors.black87,
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

