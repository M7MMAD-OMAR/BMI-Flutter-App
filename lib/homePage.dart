import 'dart:math';

import 'package:dmi/main.dart';
import 'package:dmi/result.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool isMale = true;
  late int age = 15;
  late int weight = 180;
  late double heightVal = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar DMI"),
      ),
      body: SafeArea(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              AlertDialog alert = AlertDialog(
                backgroundColor: Colors.lime,
                title: const Text("Title Dialog"),
                alignment: Alignment.center,
                content: SizedBox(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      const Divider(
                        color: Colors.black,
                      ),
                      Text("This is simple text"),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text("Close"),
                        ),
                      ),
                    ],
                  ),
                ),
              );

              showDialog(
                  context: context,
                  barrierColor: Colors.green.withOpacity(0.7),
                  barrierDismissible: false,
                  builder: (BuildContext ctx) {
                    return alert;
                  });
            },
            child: const Text("Click Me!"),
          ),
        ),
      ),
    );
  }
}
