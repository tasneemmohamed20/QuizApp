import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'dart:math';

import 'score.dart';



class SportQuestions extends StatefulWidget {
  @override
  _SportQuestionsState createState() => _SportQuestionsState();
}

class _SportQuestionsState extends State<SportQuestions> {
  //declare the isBack bool
  bool isBack = true;
  bool isFlipped = false;
  bool isAnimationComplete = false;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:  Text('SPORTS',
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
      body: SafeArea(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Now we will start making our Card
              //the principe is basic
              //we will create a container that will display the back face or the front face
              // and we will wrap it in a Transform widget
              //then we will make a tween animation for animating our card
              //now let's wrap our tween animation inside a gesture detector
              GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: isFlipped ? pi : 0),
                    duration: const Duration(milliseconds: 500),
                    builder: (BuildContext context, double val, __) {
                      //here we will change the isBack val so we can change the content of the card
                      if (val >= (pi / 2)){
                        isBack = false;
                      } else {
                        isBack = true;
                      }

                      return (Transform(
                        //let's make the card flip by it's center
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            width: 309,
                            height: 474,
                            child: isBack
                                ? Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(55.0),
                                image: const DecorationImage(
                                  image: AssetImage("images/up.jpeg"),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Question : Who will host the 2026 World Cup?",
                                  style: GoogleFonts.ptSans(
                                    textStyle:const TextStyle(
                                    fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                        color: Colors.lime
                                    ),
                                ),
                                  textAlign: TextAlign.center,
                                )
                              ),
                            ) //if it's back we will display here
                                : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(pi), // it will flip horizontally the container
                              child: Container(
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(55.0),
                                  image: const DecorationImage(
                                    image: AssetImage("images/down.jpeg"),

                                  ),
                                ),
                                child:  Center(
                                  child: Text(
                                    "Answer: United States, Mexico and Canada",
                                    style: GoogleFonts.ptSans(
                                      textStyle:const TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lime
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ) //else we will display it here,
                        ),
                      ));
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(
                        Colors.cyan),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: const Padding(

                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    child: Text(
                      'United States, Mexico and Canada',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

              const SizedBox(height: 7,),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFlipped = !isFlipped;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(
                      Colors.cyan),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 126),
                  child: Text(
                    'France',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 7,),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFlipped = !isFlipped;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(
                      Colors.cyan),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 118),

                  child: Text(
                    'Germany',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 7,),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFlipped = !isFlipped;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(
                      Colors.cyan),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 60),

                  child: Text(
                    'Australia and Newzealand',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 7,),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ScoreScreen(score: 100)),
                  );},
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(
                      Colors.cyan),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 30),
                  child: Text(
                    'View Score',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );}
}