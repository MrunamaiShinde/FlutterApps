import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  bool changecolor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Container_Color_App"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Container(
              width: 150,
              height: 150,
              color: changecolor ? Colors.red : Colors.black,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (changecolor == true) {
                changecolor = false;
              } else {
                changecolor = true;
              }
              setState(() {});
            },
            backgroundColor: Colors.purple,
            child: const Text("Toggle"),
          ),
        ));
  }
}
