import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Color.fromRGBO(250, 232, 232, 1),
      Color.fromRGBO(232, 237, 250, 1),
      Color.fromRGBO(250, 249, 232, 1),
      Color.fromRGBO(250, 232, 250, 1),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("To-do list",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(255, 255, 255, 1))),
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
          itemCount: 7,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            Color backgroundColor = colors[index % colors.length];
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  //shape: BoxShape.circle, color: Colors.red
                  borderRadius: BorderRadius.circular(20),
                  // color: Color.fromRGBO(250, 232, 232, 1),
                  color: backgroundColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white
                                // borderRadius: BorderRadius.circular(40),
                                //color: Colors.white
                                ),
                            child: Icon(Icons.image_rounded),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                "Lorem Ipsum is simply setting industry.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(84, 84, 84, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            " 10 July 2023",
                            selectionColor: Color.fromRGBO(132, 132, 132, 1),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
