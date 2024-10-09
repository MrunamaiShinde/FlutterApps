import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Static Listview",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView(
          children: [
            Image.network(
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.behance.net%2Fsearch%2Fprojects%2Fgolden%2520ratio%2520circle&psig=AOvVaw0ondgdNFxf5ddmQo56p0F3&ust=1728116793439000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCJCTmMmn9IgDFQAAAAAdAAAAABAJ"),

            const Icon(
              Icons.thumb_up,
              color: Colors.red,
            ),
            const Text(
              "tadaaa",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Image.network(
            //     "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freeiconspng.com%2Fimg%2F46172&psig=AOvVaw2rCMOplw6jJLcWHewqXNEB&ust=1728115645126000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKCmm6Oj9IgDFQAAAAAdAAAAABAz"),
            Container(
              height: 200,
              width: 200,
              color: Colors.amberAccent,
              child: const Text("press"),
            ),
          ],
        ),
      ),
    );
  }
}
