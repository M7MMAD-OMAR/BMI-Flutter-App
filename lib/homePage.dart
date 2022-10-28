import 'package:dmi/main.dart';
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
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
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
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("Height"),
                              Text(
                                "$height",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton(
                                    heroTag: "Height plus",
                                    onPressed: () {
                                      setState(() {
                                        ++height;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        --height;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    heroTag: "Height minus",
                                    mini: true,
                                    child: const Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("Age"),
                              Text(
                                "$age",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton(
                                    heroTag: "Height plus",
                                    onPressed: () {
                                      setState(() {
                                        ++age;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        --age;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    heroTag: "Height minus",
                                    mini: true,
                                    child: const Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
