import 'package:flutter/material.dart';
import 'package:untitled/Screens/filterbar.dart';
import 'Screens/openingscreen.dart';
import 'Screens/loginscreen.dart';
import 'Screens/loggg.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Opening(),
      );

  }
}


