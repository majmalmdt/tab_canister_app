import 'dart:ui';
import './functions.dart';
import 'package:flutter/material.dart';
import './profile.dart';
import 'database_helper.dart';
import './query.dart';
import './global.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final countController = TextEditingController();
  final tempController = TextEditingController();
  final dbHelper = DatabaseHelper.instance;
  var holder = List<int>.filled(4, 0, growable: false);

  int? dropdownValue1;
  @override
  void dispose() {
    nameController.dispose();
    countController.dispose();
    tempController.dispose();
    super.dispose();
  }

  void setting() {
    setState(() {
      holder[1] = dropdownValue1!;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fsize = MediaQuery.textScaleFactorOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TAB CANISTER",
          style: TextStyle(
              fontSize: fsize * 23,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              icon: const Icon(Icons.account_circle_outlined)),
        ],
      ),
      body: ListView(
        children: [
          container(context, "Med 1", 2, 29, 4),
          container(context, "Med 2", 1, 25, 3),
          container(context, "Med 3", 2, 15, 2),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => functions(context, nameController,
                    countController, tempController, dropdownValue1),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget functions(context, nameController, countController, tempController,
      dropdownValue1) {
    return Padding(
      padding: MediaQueryData.fromWindow(window).viewInsets,
      child: AlertDialog(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Name"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: nameController,
                        maxLines: 5,
                        minLines: 1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Count"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: countController,
                        maxLines: 5,
                        minLines: 1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                 Padding(
                  padding: MediaQueryData.fromWindow(window).viewInsets,
                  child:const Text("Doses"),
                ),
                Padding(
                    padding: MediaQueryData.fromWindow(window).viewInsets,
                    child: DropdownButton<int>(
                      value: holder[0], //selected
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      elevation: 16,
                      onChanged: (int? newValue) {
                        setState(() {
                          holder[0] = newValue!;
                        });
                      },
                      items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    )),
                Padding(
                    padding: MediaQueryData.fromWindow(window).viewInsets,
                    child: DropdownButton<int>(
                      value: holder[1], //selected
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      elevation: 16,
                      onChanged: (int? newValue) {
                        setState(() {
                          holder[1] = newValue!;
                        });
                      },
                      items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    )),
                Padding(
                   padding: MediaQueryData.fromWindow(window).viewInsets,
                    child: DropdownButton<int>(
                      value: holder[2], //selected
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      elevation: 16,
                      onChanged: (int? newValue) {
                        setState(() {
                          holder[2] = newValue!;
                        });
                      },
                      items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    )),
                Padding(
                   padding: MediaQueryData.fromWindow(window).viewInsets,
                    child: DropdownButton<int>(
                      value: holder[3], //selected
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      elevation: 16,
                      onChanged: (int? newValue) {
                        setState(() {
                          holder[3] = newValue!;
                        });
                      },
                      items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    )),
              ],
            ),
            Row(
              children: [
                 Padding(
                  padding: MediaQueryData.fromWindow(window).viewInsets,
                  child: const Text("Temp"),
                ),
                Expanded(
                  child: Padding(
                    padding: MediaQueryData.fromWindow(window).viewInsets,
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: tempController,
                        maxLines: 5,
                        minLines: 1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            TextButton(
                child: const Text('Add'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                ),
                onPressed: () async {
                  insert(
                      nameController, countController, tempController, holder);
                })
          ],
        ),
      ),
    );
  }
}
