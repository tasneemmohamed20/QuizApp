import 'package:flutter/material.dart';
import 'package:untitled/Screens/openingscreen.dart';
import 'package:untitled/Screens/quest.dart';
import '../shared/data.dart';
import 'package:untitled/shared/appbar.dart';
import 'package:untitled/shared/CAtegories.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: CustomAppBar(
            onLogoTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Opening()),
              );
            },
            title: 'CATEGORIES'),
        body: SafeArea(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
              const SizedBox(height: 25),

          Flexible(
              // Sport part
              flex: 1,

              child: Stack(
                  children: [
                 CustomPageView(
                  assetPaths: const [
                    'images/basketball.jpeg',
                    'images/football.jpeg',
                    'images/vollyball.png',
                  ],
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionsScreen(
                            testName: 'SPORTS',
                            dataMap: sportTest,
                          )),
                    );
                  },
                ),

                const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: CustomTextContainer(text: 'SPORTS',
                )
                )])),

                  Flexible(
              //history part
              flex: 1,
              child: Stack(
                children: [
                   CustomPageView(
                    assetPaths: const [
                      'images/frenchrevelution.jpg',
                      'images/contastina.jpg',
                      'images/horoobSalebya.png',
                    ],
                     onTap: () =>   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => QuestionsScreen(
                             testName: 'HISTORY',
                             dataMap: historyTest,

                           )),
                     )
                  ),

                  const Align(
                      alignment: AlignmentDirectional.topStart,
                      child:CustomTextContainer(text: 'HISTORY'),
                  )
                ],
              )),

          Flexible(
              //general
              flex: 1,
              child: Stack(
                children: [
                   CustomPageView(
                    assetPaths: const [
                      'images/chemistry.jpeg',
                      'images/physics.jpg',
                      'images/plant.jpg',
                    ],
                       onTap: () =>   Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => QuestionsScreen(
                               testName: 'GENERAL',
                               dataMap: generalTest)),
                       )
                  ),
                  const Align(
                      alignment: AlignmentDirectional.topStart,
                      child:
                      CustomTextContainer(text: 'GENERAL KNOWLEDGE'),
                  )
                ],
              )),
        ])));
  }
}
