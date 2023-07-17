import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onLogoTap;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.onLogoTap,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.cyan.shade100,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 30,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: onLogoTap,
            child: Image.asset(
              'images/quizzchannel-removebg-preview.png',
              width: 60.0,
              height: 60.0,
            ),
          ),
        ),
      ],
    );
  }
}
