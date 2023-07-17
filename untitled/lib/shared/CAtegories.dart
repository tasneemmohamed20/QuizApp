import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPageView extends StatelessWidget {
  final List<String> assetPaths;
  final VoidCallback onTap;

  const CustomPageView({super.key,
    required this.assetPaths,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Set the border radius
          child: Container(
            width: MediaQuery.of(context).size.width*0.85,
            height: 190,

            child: PageView(

              children: assetPaths.map((assetPath) {
                return Image.asset(
                  assetPath,
                  fit: BoxFit.cover,

                );
              }).toList(),
            ),
          ),
        ),
      ),
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
        backgroundColor: Colors.cyan.shade100,
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
    return Padding(

      padding:
      EdgeInsets.only(left: 60, top: 0),

      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(
              color: Colors.black,
              offset: Offset(1, 1),
            ),]
          ),
        ),

      ),
    );
  }
}
