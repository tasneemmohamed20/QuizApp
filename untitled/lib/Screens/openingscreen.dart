import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginscreen.dart';

class Opening extends StatelessWidget {
  const Opening({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Positioned(
                  // bottom: 300,
                  // left: -40,

                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 100),
                    child: Image.asset(
                      'images/quizzchannel-removebg-preview.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 145,
                  child: Text(
                    'Best to test',
                    style: GoogleFonts.fasthand(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.cyan
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 150),
                  //padding: EdgeInsets.all(20),


                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen1()),
                          );
                        },

                        style: ButtonStyle(
                          backgroundColor:
                                MaterialStateProperty.all(Colors.cyan),
                            shape:

                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                        child: const Padding(

                          padding: EdgeInsets.symmetric(vertical: 20, horizontal:50),
                          child: Text('GET STARTED',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
