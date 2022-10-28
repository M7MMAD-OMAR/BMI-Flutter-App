import 'package:flutter/material.dart';

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
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.male),
                      label: const Text("Male"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(50),
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
