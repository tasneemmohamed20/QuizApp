import 'package:flutter/material.dart';
import 'Screens/openingscreen.dart';
import 'Screens/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Opening(),
      );

  }
}


