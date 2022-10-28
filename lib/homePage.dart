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
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
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
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.amber[400],
                          margin: const EdgeInsets.all(10),
                          child:  TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(50),
                            ),
                            child: Column(
                              children: <Widget>[
                                const Text("Weight"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Text(heightVal.toStringAsFixed(1),
                                      style: Theme.of(context).textTheme.headline2,),
                                    Text("CM", style: Theme.of(context).textTheme.bodySmall,),
                                  ],
                                ),
                                Slider(
                                    value: heightVal,
                                    min: 0,
                                    max: 240,
                                    onChanged: (newValue) => setState(() => heightVal = newValue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text("Height"),
                              Text(
                                "$weight",
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
                                        ++weight;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        --weight;
                                      });
                                    },
                                    backgroundColor: Colors.deepPurpleAccent,
                                    heroTag: "Height minus",
                                    mini: true,
                                    child: const Icon(Icons.remove),
                                  ),
                                ],
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 14,
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        double result = weight / pow(heightVal, 2);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => Result(isMale: isMale, result: result, age: age)));
                      });
                    },
                    child: const Text("Calculate"),
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
