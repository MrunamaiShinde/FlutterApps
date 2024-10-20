import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

class MyCartApp extends StatefulWidget {
  const MyCartApp({super.key});

  @override
  State createState() => _MyCartAppState();
}

class _MyCartAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.arrow_back_ios),
          ],
          title: const Text(
            "My Cart",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 148, 90, 185)),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              // color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/shoeimg.jpeg"),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike shoes",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$570.00",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 205,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (count > 0) {
                                      count--;
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "$count",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  // color: Colors.amber,
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (count >= 0) {
                                      count++;
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/shoeimg.jpeg"),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike shoes",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$77.00",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 217,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (count > 0) {
                                      count--;
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "$count",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  // color: Colors.amber,
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (count >= 0) {
                                      count++;
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Subtotal:",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      //spacer(),
                      const Text(
                        " \$800.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee:",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      const Text(
                        " \$5.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Discount:",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      //spacer(),
                      const Text(
                        " 40.00\%",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 110, 39, 176)),
                    child: const Text(
                      "Checkout for \$480.00",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
