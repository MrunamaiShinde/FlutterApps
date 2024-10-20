import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 300,
          height: 300,
          color: Colors.red,
          //   decoration:BorderDecoration(BorderRadius)
        ),
      ),
    );
  }
}
