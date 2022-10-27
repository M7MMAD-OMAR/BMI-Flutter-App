import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({Key? key,required this.isMale, required this.wdith,required this.height}) : super(key: key);

  bool isMale = true;
  int height = 0;
  int wdith = 0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Gender: ${isMale? 'Male' : 'Female'}"),
              Text("Height: ${height}"),
              Text("With: ${wdith}"),
            ],
          ),
        ),
      ),
    );
  }
}
