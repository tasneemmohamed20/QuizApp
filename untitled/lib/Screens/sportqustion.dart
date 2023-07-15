import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'dart:math';
import 'score.dart';
import 'package:untitled/shared/answer_button.dart';
import 'package:untitled/shared/appbar.dart';
import 'package:untitled/shared/flipp.dart';

class SportQuestions extends StatefulWidget {
  const SportQuestions({super.key});

  @override
  _SportQuestionsState createState() => _SportQuestionsState();
}

class _SportQuestionsState extends State<SportQuestions> {
  // declare the isBack bool
  bool isBack = true;
  bool isFlipped = false;
  bool isAnimationComplete = false;
  double angle = 0;
  //
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
          title: 'SPORTS',
          onLogoTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Opening()),
            );
          },
          ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: isFlipped ? pi : 0),
                    duration: const Duration(milliseconds: 500),
                    builder: (BuildContext context, double val, __) {
                      //here we will change the isBack val so we can change the content of the card
                      if (val >= (pi / 2)) {
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
                                        textStyle: const TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.lime),
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                  ) //if it's back we will display here
                                : Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..rotateY(
                                          pi), // it will flip horizontally the container
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(55.0),
                                        image: const DecorationImage(
                                          image: AssetImage("images/down.jpeg"),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Answer: United States, Mexico and Canada",
                                          style: GoogleFonts.ptSans(
                                            textStyle: const TextStyle(
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.lime),
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
              AnswerButton(
                  answerText: "United States, Mexico and Canada",
                  onTap: () {

                    setState(() {
                      isFlipped = !isFlipped;
                    }
                    );
                  }),

              AnswerButton(
                  answerText: "France",
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  }),

              AnswerButton(
                  answerText: "Germany",
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  }),

              AnswerButton(
                  answerText: "Australia and Newzealand",
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  }),

              AnswerButton(
                  answerText: "View Score",
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
