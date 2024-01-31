import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const String sample_text =
      "When Zarathustra was thirty years old, he left his home and the lake of his home, and went into the mountains.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(sample_text,
              style: GoogleFonts.openSans(
                fontSize: 24,
              )),
        )),
      ),
    );
  }
}
