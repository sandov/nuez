import 'package:flutter/material.dart';
import 'package:nuez/book_page.dart';
import 'package:nuez/file_manager.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Map bookData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bookData = await FileManager.getBook();
          setState(() {});
        },
        child: const Icon(Icons.file_open),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      backgroundColor: const Color.fromARGB(255, 120, 120, 120),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              BookPage(bookData["title"] ?? ""),
              BookPage(bookData["author"] ?? ""),
              BookPage(bookData["firstChapterTitle"] ?? ""),
              BookPage(bookData["firstChapterContent"] ?? ""),
              BookPage(bookData["secondChapterTitle"] ?? ""),
              BookPage(bookData["secondChapterContent"] ?? ""),
              BookPage(bookData["thirdChapterTitle"] ?? ""),
              BookPage(bookData["thirdChapterContent"] ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
