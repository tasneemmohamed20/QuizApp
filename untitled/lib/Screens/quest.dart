import 'package:flutter/material.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/shared/answer_button.dart';
import 'package:untitled/shared/data.dart';
import 'dart:math';
import 'package:untitled/shared/CAtegories.dart';
import 'score.dart';

int index = 0;
int counter = 0;

class QuestionsScreen extends StatefulWidget {
  // final Color? themeColor;
  final String? testName;
  final String? dataMap;

  const QuestionsScreen({super.key, this.testName, this.dataMap});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
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
          leadingWidth: 80,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(widget.testName!,
                  style: GoogleFonts.fasthand(
                    textStyle: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )),
            ),
          ),
          title: Column(
            children: [
              Text(
                "${index + 1}/${sportTest.length}",
                style: GoogleFonts.playfairDisplay(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Opening()),
                  );
                },
                child: Image.asset(
                  'images/quizzchannel-removebg-preview.png',
                  width: 60.0,
                  height: 60.0,
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                            borderRadius:
                                                BorderRadius.circular(55.0),
                                            image: const DecorationImage(
                                              image: AssetImage("images/up.jpeg"),
                                            ),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Question : ${sportTest[index]["question"]}",
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
                                                image: AssetImage(
                                                    "images/down.jpeg"),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Answer: ${sportTest[index]["answers"][0]["ans"]}",
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

                    AnswerButton(  //true answer
                        answerText: "${sportTest[index]["answers"][0]["ans"]}",
                        onTap: () {
                          counter++;
                          if (index == sportTest.length - 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScoreScreen(
                                        score: counter,
                                      )),
                            );
                          }
                          else{
                            setState(() {
                              index++;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuestionsScreen(testName: 'SPORTS',)),
                              );
                              // i changed the state (Data)
                            });

                          }
                        },
                    ),

                    AnswerButton(
                        answerText: "${sportTest[index]["answers"][1]["ans"]}",
                        onTap: () {
                          setState(() {
                            isFlipped = !isFlipped;
                          });
                        }),
                    AnswerButton(
                        answerText: "${sportTest[index]["answers"][2]["ans"]}",
                        onTap: () {
                          setState(() {
                            isFlipped = !isFlipped;
                          });
                        }),
                    AnswerButton(
                        answerText: "${sportTest[index]["answers"][3]["ans"]}",
                        onTap: () {
                          setState(() {
                            isFlipped = !isFlipped;
                          });
                        }),

                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child:
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScoreScreen(score: counter,)),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
