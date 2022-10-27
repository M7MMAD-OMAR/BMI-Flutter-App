import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(
      {Key? key, required this.isMale, required this.result, required this.age})
      : super(key: key);

  bool isMale = true;
  int age = 0;
  double result = 0;

  String get healThines {
    if (result >= 30) {
      return "Obese";
    } else if (result > 25 && result < 30) {
      return "Over Wight";
    } else if (result >= 18.5 && result <= 24.9) {
      return "Normal";
    } else {
      return "NON";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Gender: ${isMale ? 'Male' : 'Female'}",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "Result: ${result.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "Heal Thines: ${healThines}",
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              Text(
                "Age: ${age}",
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
