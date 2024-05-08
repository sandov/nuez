import 'package:flutter/material.dart';
import 'package:nuez/Widgets/main_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("File")),
        backgroundColor: const Color.fromARGB(255, 120, 120, 120),
        body: const MainView(),
      ),
    );
  }
}
