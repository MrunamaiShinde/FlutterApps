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
        appBar: AppBar(
          title: const Text("ListView Builder"),
          backgroundColor: Color(0xFFEA89A9),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          // physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Text(
              "Index :$index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ),
    );
  }
}
