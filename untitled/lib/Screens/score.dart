import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/categories.dart';
import 'package:untitled/Screens/quest.dart';
import 'package:untitled/Screens/summary.dart';

import '../shared/CAtegories.dart';
import '../shared/appbar.dart';
import '../shared/data.dart';
import 'openingscreen.dart';

class ScoreScreen extends StatefulWidget {
  final int score;

  ScoreScreen({required this.score});

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
          onLogoTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Opening()),
            );
          },
          title: 'SCORE'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Score',
                style: GoogleFonts.poppins(
        textStyle:   TextStyle(
        fontWeight: FontWeight.bold, fontSize: 30,color: Colors.cyan.shade100,
        ),
      )
            ),
            const SizedBox(height: 20),
            Text(
              widget.score.toString(),
              style:  TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.cyan.shade100,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                index = 0;
                score = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: Colors.cyan.shade100,
              ),
              child: const Text(
                'Restart',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
