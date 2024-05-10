import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPage extends StatelessWidget {
  const BookPage(this.textContent, {super.key});
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      color: const Color.fromARGB(255, 230, 230, 230),
      constraints: const BoxConstraints(minWidth: 200, maxWidth: 800),
      padding: const EdgeInsets.fromLTRB(60, 60, 60, 60),
      child: Text(
        textContent,
        style: GoogleFonts.openSans(
          fontSize: 22,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
