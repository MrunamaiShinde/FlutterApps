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
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 230, 31, 31)),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
            itemCount: 4,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfhPfreowbbmDmBzY_tYCEj-77hXOzhti9Cg&s",
                              fit: BoxFit.cover),
                          color: Colors.amber,
                          // ShrinkWrap: true
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          child:
                              Image.asset("assets/m1.jpg", fit: BoxFit.cover),
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          child: Image.network(
                              "https://www.vintagemovieposters.co.uk/shop/avengers-movie-poster/",
                              fit: BoxFit.cover),
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          child: Image.network(
                              "https://compote.slate.com/images/77440fdf-a599-4fd1-90fc-cc619aa7419d.jpg?crop=590%2C885%2Cx0%2Cy0",
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
