import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
class FlippableCard extends StatefulWidget {

  // Add these two
  final String frontText;
  final String backText;

  final Widget front;
  final Widget back;

  const FlippableCard({
    required this.frontText,
    required this.backText,
    required this.front,
    required this.back
  });
  @override
  _FlippableCardState createState() => _FlippableCardState();
}

class _FlippableCardState extends State<FlippableCard> {
  bool isFlipped = false;
  double angle = 0;

  void flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flip,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: isFlipped ? pi : 0),
        duration: Duration(milliseconds: 500),
        builder: (context, double val, __) {
          if (val >= (pi / 2)) {
            isFlipped = true;
          } else {
            isFlipped = false;
          }

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(val),
            child: isFlipped ? widget.back : widget.front,
          );
        },
      ),
    );
  }
}