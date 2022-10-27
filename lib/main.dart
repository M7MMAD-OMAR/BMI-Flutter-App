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
        fontFamily: 'Tamil Sangam MN',
        canvasColor: Colors.black87,
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ),
      ),
      home: Result(isMale: true, age: 200, result: 27),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar DMI"),
      ),
    );
  }
}
