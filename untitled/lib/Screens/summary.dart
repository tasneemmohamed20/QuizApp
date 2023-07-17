import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/quest.dart';
import 'package:untitled/shared/answer_button.dart';
import 'package:untitled/shared/data.dart';
import 'dart:math';
import 'package:untitled/shared/CAtegories.dart';
import 'openingscreen.dart';
import 'score.dart';

class Summary extends StatefulWidget {
  final String? testName;
  final List? dataMap;

  const Summary({super.key, this.testName, required this.dataMap});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  bool isBack = true;
  bool isFlipped = false;
  bool isAnimationComplete = false;
  double angle = 0;

  void _flip() {
    setState(() {
      isFlipped = !isFlipped;
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
                                      borderRadius: BorderRadius.circular(55.0),
                                      image: const DecorationImage(
                                        image: AssetImage("images/up.jpeg"),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Question : ${widget.dataMap![index]["question"]}",
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
                                          "Answer: ${widget.dataMap![index]["answers"][0]["ans"]}",
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
            ]))))));
  }
}
