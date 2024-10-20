import "package:flutter/material.dart";

import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";
import 'package:intl/intl_browser.dart';
import 'package:to_do_bottomsheet/todoModel.dart';

class ToDoAppUI extends StatefulWidget {
  const ToDoAppUI({super.key});

  @override
  State createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State {
  List<Color> colors = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  List<Todomodel> todocards = [
    Todomodel(
      title: "Flutter",
      description: "Dart, OOP",
      date: "17 October, 2024",
    ),
    Todomodel(
      title: "Java",
      description: "Exception, OOP",
      date: "18 October, 2024",
    ),
    Todomodel(
      title: "Python",
      description: "Generators, OOP",
      date: "19 October, 2024",
    ),
  ];
  void submit(bool doEdit, [Todomodel? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doEdit) {
        todoObj!.title = titleController.text;
        todoObj.description = descriptionController.text;
        todoObj.date = dateController.text;
      } else {
        todocards.add(
          Todomodel(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text,
          ),
        );
      }
    }
    Navigator.of(context).pop();
    ClearControllers();
    setState(() {});
  }

  void ClearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void showBottomSheet(bool doEdit, [Todomodel? todocard]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 12.0,
                right: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Create-To Do",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Title:",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(2, 167, 177, 1),
                    fontSize: 30,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(2, 167, 177, 1),
                        )),
                  ),
                  controller: titleController,
                ),
                Text(
                  "Description:",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(2, 167, 177, 1),
                    fontSize: 30,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(2, 167, 177, 1),
                        )),
                  ),
                  controller: descriptionController,
                ),
                Text(
                  "Date:",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(2, 167, 177, 1),
                    fontSize: 30,
                  ),
                ),
                TextField(
                  controller: dateController,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025));
                    String formattedDate = DateFormat.yMd().format(pickedDate!);
                    setState(() {
                      dateController.text = formattedDate;
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.calendar_month_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(2, 167, 177, 1),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        if (doEdit == true) {
                          submit(true, todocard);
                        } else {
                          submit(false);
                        }
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(2, 167, 177, 1),
                        ),
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-do list",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(255, 255, 255, 1))),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: todocards.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Color backgroundColor = colors[index % colors.length];
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/image.avif"),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                color: Colors.white
                                //image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCvoYUqr2RFxRLQgR03dZXQ-B1m1SwliasU_1tJUyd8JEtoeaQxQyipsmUEv_aYMOwFnc&usqp=CAU");
                                // borderRadius: BorderRadius.circular(40),
                                //color: Colors.white
                                ),

                            // child: Icon(Icons.image_rounded),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //  const SizedBox(height: 20),
                            // Text(
                            //   "Lorem Ipsum is simply setting industry.",
                            //   style: GoogleFonts.quicksand(
                            //     fontWeight: FontWeight.w600,
                            //     //fontSize: 30,
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            // Text(
                            //   "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            //   style: GoogleFonts.quicksand(
                            //     fontWeight: FontWeight.w500,
                            //     //fontSize: 30,
                            //   ),
                            // ),
                            Text(
                              todocards[index].title,
                            ),
                            Text(
                              todocards[index].description,
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
                        Text(
                          todocards[index].date,
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        const Spacer(),
                        // IconButton(
                        //   onPressed: () {
                        //     todocard.remove.todocards([index]);
                        //   },
                        //   icon: const Icon(
                        //     Icons.edit_outlined,
                        //     color: Color.fromRGBO(0, 139, 148, 1),
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            titleController.text = todocards[index].title;
                            descriptionController.text =
                                todocards[index].description;
                            dateController.text = todocards[index].date;
                            showBottomSheet(
                              true,
                              todocards[index],
                            );
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1.0),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            todocards.remove(todocards[index]);

                            setState(() {});
                          },
                          child: const Icon(
                            Icons.delete_outline_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1.0),
                          ),
                        ),

                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(
                        //     Icons.delete_outlined,
                        //     color: Color.fromRGBO(0, 139, 148, 1),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
          // todocards.add(value)
          //ClearControllers();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),
    );
  }
}
