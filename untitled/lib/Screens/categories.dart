import 'package:flutter/material.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'package:untitled/Screens/sportqustion.dart';
import 'package:untitled/Screens/quest.dart';
import 'generalquestion.dart';
import 'historyquestion.dart';
import 'package:untitled/shared/appbar.dart';
import 'package:untitled/shared/CAtegories.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
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
            title: 'CATEGORIES'),
        body: SafeArea(
            child: Column(children: [
          Flexible(
              // Sport part
              flex: 1,
              child: Stack(
                  children: [
                const CustomPageView(
                  assetPaths: [
                    'images/basketball.jpeg',
                    'images/football.jpeg',
                    'images/vollyball.png',
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  QuestionsScreen(
                              testName: 'SPORTS',
                              dataMap: 'sportTest',

                            )),
                      );
                    },
                  ),
                ),
                const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: CustomTextContainer(text: 'SPORTS',
                )
                )])),
          const SizedBox(height: 5),
          Flexible(
              //history part
              flex: 1,
              child: Stack(
                children: [
                  const CustomPageView(
                    assetPaths: [
                      'images/frenchrevelution.jpg',
                      'images/contastina.jpg',
                      'images/horoobSalebya.png',
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionsScreen(
                                testName: 'HISTORY',
                              )),
                        );
                      },
                    ),
                  ),
                  const Align(
                      alignment: AlignmentDirectional.topStart,
                      child:CustomTextContainer(text: 'HISTORY'),
                  )
                ],
              )),
          const SizedBox(height: 5),
          Flexible(
              //general
              flex: 1,
              child: Stack(
                children: [
                  const CustomPageView(
                    assetPaths: [
                      'images/chemistry.jpeg',
                      'images/physics.jpg',
                      'images/plant.jpg',
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GeneralQuestions()),
                        );
                      },
                    ),
                  ),
                  const Align(
                      alignment: AlignmentDirectional.topStart,
                      child:
                      CustomTextContainer(text: 'GENERAL KNOWLEDGE'),
                  )
                ],
              )),
          const SizedBox(height: 5),
        ])));
  }
}
