import 'package:flutter/material.dart';
import 'package:practice_test/my_cart.dart';

void main() {
  runApp(const MyCartApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State createState() => _TestAppState();
}

class _TestAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 110, 39, 176)),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network(
                //"https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnkuu4OKDkrJ3Rd6Y1vIlDNx8oD63KkgP0OA&s",
                //"https://w7.pngwing.com/pngs/768/429/png-transparent-nike-free-shoe-footwear-purple-violet-kobe-bryant-purple-white-violet.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                child: const Text(
                  "Nike Air Force 1'07",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 110, 39, 176)),
                  child: const Text(
                    "SHOES",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 110, 39, 176)),
                  child: const Text(
                    "FOOTWARE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                child: const Text(
                  "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                ),
                Container(
                  child: const Text(
                    "Quantity:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      count--;
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove)),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Text(
                    "$count",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),

            // GestureDetector(
            //   onTap: () {
            //     if (quantity > 0) {
            //       quantity--;
            //     } else {
            //       quantity = 0;
            //     }
            //     setState(() {});
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.all(5.0),
            //     // decoration: BoxDecoration,
            //   ),
            // ),

            const SizedBox(
              width: 30,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 39, 176)),
                child: const Text(
                  "PURCHASE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
