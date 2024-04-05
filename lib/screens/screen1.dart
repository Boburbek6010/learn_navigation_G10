import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_navigation_g10/main.dart';
import 'package:learn_navigation_g10/screens/screen2.dart';

class Screen1 extends StatefulWidget {
  static const id = "/screen_1";

  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController hobbyController = TextEditingController();
  String? result;

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    hobbyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(result ?? "Screen1"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: "Name"),
                ),
                TextField(
                  decoration: const InputDecoration(hintText: "Age"),
                  controller: ageController,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: "Hobby"),
                  controller: hobbyController,
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          User user1 = User(
              name: nameController.text.trim(),
              age: int.tryParse(ageController.text.trim().toString()) ?? 0,
              hobby: hobbyController.text.trim());
          User2 user2 = User2(
              name: nameController.text.trim(),
              age: int.tryParse(ageController.text.trim().toString()) ?? 0,
              hobby: hobbyController.text.trim());
          User3 user3 = User3(
              name: nameController.text.trim(),
              age: int.tryParse(ageController.text.trim().toString()) ?? 0,
              hobby: hobbyController.text.trim());

          AllUser allUser = AllUser(user1, user2, user3);

          // Navigator.pushNamed(context, Screen2.id, arguments: allUser);
          result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Screen2(),
              settings: RouteSettings(
                arguments: user1
              ),
            ),
          );
          setState(() {});

          log(result.toString());
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class User {
  String name;
  int age;
  String hobby;

  User({required this.name, required this.age, required this.hobby});
}

class User3 {
  String name;
  int age;
  String hobby;

  User3({required this.name, required this.age, required this.hobby});
}

class User2 {
  String name;
  int age;
  String hobby;

  User2({required this.name, required this.age, required this.hobby});
}

class AllUser {
  User user1;
  User2 user2;
  User3 user3;

  AllUser(this.user1, this.user2, this.user3);
}
