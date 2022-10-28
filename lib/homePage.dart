import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool isMale = true;
  late int age = 15;
  late int height = 180;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar DMI"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        icon: const Icon(
                          Icons.male,
                        ),
                        label: const Text("Male"),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(50),
                          primary: isMale ? Colors.purple : Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        icon: const Icon(Icons.male),
                        label: const Text("Female"),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(50),
                          primary: isMale ? Colors.green : Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Text("Height"),
                          Text("$height"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Text("Age"),
                          Text("$age"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
