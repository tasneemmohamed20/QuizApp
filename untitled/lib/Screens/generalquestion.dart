import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'dart:math';
import 'package:untitled/shared/answer_button.dart';
import 'score.dart';
import 'package:untitled/shared/appbar.dart';




class GeneralQuestions extends StatefulWidget {
  const GeneralQuestions({super.key});

  @override
  _GeneralQuestionsState createState() => _GeneralQuestionsState();
}

class _GeneralQuestionsState extends State<GeneralQuestions> {
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
      appBar: CustomAppBar(
        title:'GENERAL',
          onLogoTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Opening()),);},
           ),

      body: SafeArea(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const SizedBox(height:5 ),
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
                                    "Question : كيف بدأ الخلق؟",
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
                                    "Answer: آدم وحواء",
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
                      vertical: 10, horizontal: 118),
                  child: Text(
                    'الصدفة',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 7,),

              AnswerButton(answerText: 'نظرية التطور', onTap: (){
                setState(() {
                  isFlipped = !isFlipped;
                });
              },),

              AnswerButton(answerText: 'آدم وحواء', onTap: (){
                setState(() {
                  isFlipped = !isFlipped;
                });
              },),

              AnswerButton(answerText: 'الانفجار العظيم', onTap: (){
                setState(() {
                  isFlipped = !isFlipped;
                });
              },),

              AnswerButton(answerText: 'View Score', onTap: (){
                setState(() {
                  isFlipped = !isFlipped;
                });
              },),

            ],
          ),
        ),
      ),
    );}
}