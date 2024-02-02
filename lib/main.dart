import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const String sample_text =
      """When Zarathustra was thirty years old, he left his home and the lake of his home, and went into the mountains. There he enjoyed his spirit and solitude, and for ten years did not weary of it. But at last his heart changed﻿—and rising one morning with the rosy dawn, he went before the sun, and spake thus unto it:
Thou great star! What would be thy happiness if thou hadst not those for whom thou shinest!
For ten years hast thou climbed hither unto my cave: thou wouldst have wearied of thy light and of the journey, had it not been for me, mine eagle, and my serpent.
But we awaited thee every morning, took from thee thine overflow and blessed thee for it.
Lo! I am weary of my wisdom, like the bee that hath gathered too much honey; I need hands outstretched to take it.
I would fain bestow and distribute, until the wise have once more become joyous in their folly, and the poor happy in their riches.
Therefore must I descend into the deep: as thou doest in the evening, when thou goest behind the sea, and givest light also to the netherworld, thou exuberant star!
Like thee must I go down, as men say, to whom I shall descend.
Bless me, then, thou tranquil eye, that canst behold even the greatest happiness without envy!
Bless the cup that is about to overflow, that the water may flow golden out of it, and carry everywhere the reflection of thy bliss!
Lo! This cup is again going to empty itself, and Zarathustra is again going to be a man.
Thus began Zarathustra’s down-going.""";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 100, 100, 100),
        ),
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 230, 230, 230),
            constraints: BoxConstraints(minWidth: 100, maxWidth: 800),
            padding: EdgeInsets.all(16.0),
            child: Text(sample_text,
              style: GoogleFonts.openSans(
                fontSize: 24
              )
            )
          )
        ),
      ),
    );
  }
}
