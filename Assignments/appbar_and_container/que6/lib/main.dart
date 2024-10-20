import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.deepPurple,
                ),
                Container(height: 120, width: 120, color: Colors.indigo),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.green,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.yellow,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.orange,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.red,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.pink,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.purple,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
