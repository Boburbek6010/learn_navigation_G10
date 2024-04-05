import 'package:flutter/material.dart';
import 'package:learn_navigation_g10/screens/screen1.dart';

class Screen2 extends StatefulWidget {
  static const id = "/screen_2";
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)?.settings.arguments;
    if(user is User && user != null){
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(user.name),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(user.age.toString()),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: textEditingController,
                ),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context, textEditingController.text.trim().toString());
                },
                child: const Text("Back"),
              )
            ],
          )
        ),
      );
    }else{
      return const Scaffold();
    }

  }
}
