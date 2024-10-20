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
          child: Column(
            children: [
              Image.network(
                "https://pixlr.com/images/generator/text-to-image.webp",
                width: 150,
                height: 150,
              ),
              Image.network(
                "https://plus.unsplash.com/premium_photo-1664304407166-c6ae8337864f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGlnZXIlMjBmYWNlfGVufDB8fDB8fHww",
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
