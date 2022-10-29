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
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Container(
          child: FloatingActionButton(
            onPressed: (){
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.purple,
                  textColor: Colors.white,
                  fontSize: 16.0,
              );
            },
            child: const  Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}


