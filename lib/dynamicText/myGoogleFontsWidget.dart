import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGoogleFontsWidget extends StatelessWidget {
  const MyGoogleFontsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Hello I am Kathir',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        )
    );
  }
}
