import 'package:flutter/material.dart';
import 'package:nuez/Widgets/book_page.dart';
import 'package:epubx/epubx.dart';
import 'dart:io' as io;
import 'package:path/path.dart' as path;
import 'dart:async';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late Future<String> bookData;

  @override
  void initState() {
    super.initState();
    // Call getBook method inside initState
    bookData = getBook();
  }

  Future<String> getBook() async {
    String fileName = 'comedy.epub';
    String fullPath = path.join(io.Directory.current.path, fileName);
    var targetFile = io.File(fullPath);
    List<int> bytes = await targetFile.readAsBytes();

    EpubBook epubBook = await EpubReader.readBook(bytes);

    String title = epubBook.Title ?? "Empty title";
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            FutureBuilder<String>(
              future: bookData, // Use the stored future here
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Use snapshot.data to access the fetched data
                  return BookPage('${snapshot.data}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
