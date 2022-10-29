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
        child: ElevatedButton(
          onPressed: () {
            SnackBar snackBar = SnackBar(
              content: const Text("Hi I'm Snack Bar"),
              backgroundColor: Colors.green,
              padding: const EdgeInsets.all(20),
              duration: const Duration(seconds: 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              action: SnackBarAction(
                label: 'Snack bar action',
                textColor: Colors.black,
                onPressed: () {
                  print("From Snack Bar action");
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Snack Bar!"),
        ),
      ),
    );
  }
}
