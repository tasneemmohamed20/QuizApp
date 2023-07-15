import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPageView extends StatelessWidget {
  final List<String> assetPaths;

  const CustomPageView({super.key,
    required this.assetPaths,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: assetPaths.map((assetPath) {
        return Image.asset(
          assetPath,
          fit: BoxFit.cover,
        );
      }).toList(),
    );
  }
}

//------------------------------------------------------------------------------

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomElevatedButton({super.key,
    required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.cyan,
        padding: const EdgeInsets.all(7.0),
      ),
      child: const Icon(
        Icons.arrow_forward_rounded,
        color: Colors.black,
      ),
    );
  }
}

//------------------------------------------------------------------------------


class CustomTextContainer extends StatelessWidget {
  final String text;
  const CustomTextContainer({super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(7, 2, 7, 2),
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      child: Text(
        text,
        style: GoogleFonts.teko(
          textStyle: const TextStyle(fontSize: 25, letterSpacing: 1),
        ),
      ),
    );
  }
}
