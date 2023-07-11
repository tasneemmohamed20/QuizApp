import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'package:untitled/Screens/sportqustion.dart';
import 'generalquestion.dart';
import 'historyquestion.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:  Text('CATEGORIES',
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
            child: Stack(
      children: [
        Column(
          children: [
            Flexible(// Sport part
              flex: 1,
              child: Stack(
                children: [
                  PageView(
                  children: [
                    Image.asset('images/basketball.jpeg',
                        fit: BoxFit.cover,),
                    Image.asset('images/football.jpeg',
                        fit: BoxFit.cover),
                    Image.asset('images/vollyball.png',
                        fit: BoxFit.cover),],),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child:
                      ElevatedButton(
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SportQuestions()),
                      );
                    },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(), backgroundColor: Colors.cyan,
                          padding: const EdgeInsets.all(7.0),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.black,
                        ),
                      )
                    ),
                  Align(
                      alignment: AlignmentDirectional.topStart,

                      child: Container(
                        padding: const EdgeInsets.fromLTRB(7,2,7,2),
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.cyan,
                        ),
                        child: Text('SPORTS',
                          style: GoogleFonts.teko(
                            textStyle: const TextStyle(
                                fontSize: 25,
                                letterSpacing: 1
                            ),
                          ),

                        ),
                      )
                  )
                  ])),
            const SizedBox(height: 5),

            Flexible( //history part
              flex: 1,
              child: Stack(
                children: [
                  PageView(
                  children: [
                    Image.asset('images/frenchrevelution.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/contastina.jpg',
                        fit: BoxFit.cover),
                    Image.asset('images/horoobSalebya.png',
                        fit: BoxFit.cover),
                  ],
                ),
                  Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child:
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  HistoryQuestions()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(), backgroundColor: Colors.cyan,
                          padding:const EdgeInsets.all(7.0),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.black,
                        ),
                      )
                  ),
                  Align(
                      alignment: AlignmentDirectional.topStart,

                      child: Container(
                        padding: const EdgeInsets.fromLTRB(7,2,7,2),
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.cyan,
                        ),
                        child: Text('HISTORY',
                          style: GoogleFonts.teko(
                            textStyle: const TextStyle(
                                fontSize: 25,
                                letterSpacing: 1
                            ),
                          ),

                        ),
                      )
                  )
                ],)
            ),

            const SizedBox(height: 5),

            Flexible(  //general
              flex: 1,
                child: Stack(
                  children: [PageView(
                    children: [
                      Image.asset('images/chemistry.jpeg',
                          fit: BoxFit.cover),
                      Image.asset('images/physics.jpg',
                          fit: BoxFit.cover),
                      Image.asset('images/plant.jpg',
                          fit: BoxFit.cover),
                    ],
                  ),
                    Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child:
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  GeneralQuestions()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape:const CircleBorder(), backgroundColor: Colors.cyan,
                            padding: const EdgeInsets.all(7.0),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.black,
                          ),
                        )
                    ),
                    Align(
                        alignment: AlignmentDirectional.topStart,

                        child: Container(
                          padding: const EdgeInsets.fromLTRB(7,2,7,2),
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.cyan,
                          ),
                          child: Text('GENERAL KNOWLEDGE',
                            style: GoogleFonts.teko(
                              textStyle: const TextStyle(
                                  fontSize: 25,
                                  letterSpacing: 1
                              ),
                            ),

                          ),
                        )
                    )

                  ],)
            ),
            const SizedBox(height: 5),


          ])])
    )
    );
  }
}
