import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsPage extends StatelessWidget {
  const GoogleFontsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Google Fonts",
        style: GoogleFonts.aguafinaScript().copyWith(fontSize: 60.0),
      ),
    );
  }
}
