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
                "Column With Scroll",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.amber,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // height:MediaQuery.of(context).size.height,
                children: [
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkDw8gfasoRwudevu8j_ksjySmSMpVPf6q2Q&s"),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueGrey,
                  ),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxTSiVzj-ZN61R8AzeVJoxZbNJ2O6KEQKnQ&s"),
                  Container(height: 200, width: 200, color: Colors.lightBlue),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKLlw2yE6nuCenC8gt_PinYlBDf1F1FqU1RUodyFduwBO955N1pgVj96kwE6Xmk2qBgNE&usqp=CAU"),
                  Container(height: 200, width: 200, color: Colors.blueAccent),
                ],
              ),
            )));
  }
}
