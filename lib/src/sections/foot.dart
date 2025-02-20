import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Foot extends StatelessWidget {
  const Foot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Text(
        "copyright © Althierfson\nSite created with flutter web",
        textAlign: TextAlign.center,
        style: GoogleFonts.raleway(color: Colors.white),
      ),
    );
  }
}
