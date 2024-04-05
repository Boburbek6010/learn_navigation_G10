import 'package:flutter/material.dart';
import 'package:learn_navigation_g10/screens/screen1.dart';
import 'package:learn_navigation_g10/screens/screen2.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: const Screen1(),
      routes: {
        Screen1.id : (context) => const Screen1(),
        Screen2.id : (context) => const Screen2(),
      },
    );
  }
}
