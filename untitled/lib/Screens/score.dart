import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/categories.dart';

import 'openingscreen.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  //final Function onRestart;

  ScoreScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:  Text('SCORE',
          style: GoogleFonts.teko(
            textStyle: const TextStyle(
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Opening()),
                );              },
              child: Image.asset(
                'images/quizzchannel-removebg-preview.png',
                width: 60.0,
                height: 60.0,
              ),
            ),
          ),
        ],
        // ...other properties of the AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Score',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.cyan
              ),
            ),
            const SizedBox(height: 20),
            Text(
              score.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Categories()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: Colors.cyan,

              ),
              child: const Text(
                'Restart',
                style: TextStyle(fontSize: 20,color: Colors.black
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}