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
        body: Center(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network(
                  "https://images.unsplash.com/photo-1454023492550-5696f8ff10e1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                  height: 150,
                  width: 300),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8IEbcsyiQ4k8s0r4fm9BxYa9s2BCgPHklhA&s",
                  height: 150,
                  width: 300),
              Image.network(
                  "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
                  height: 150,
                  width: 300),
              Image.network(
                  "https://t3.ftcdn.net/jpg/02/42/55/10/360_F_242551006_pYOhNqYp5WNtTeG97esqEnruee5HO8h3.jpg",
                  height: 150,
                  width: 300),
              Image.network(
                  "https://t3.ftcdn.net/jpg/07/75/43/10/360_F_775431061_xhdkxJupmtoCOvSIiDUpHYxs83R6ala5.jpg",
                  height: 150,
                  width: 300),
            ],
          ),
        )),
      ),
    );
  }
}
