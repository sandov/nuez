import 'package:epubx/epubx.dart';
import 'dart:io' as io;
import 'package:path/path.dart' as path;
import 'dart:async';

class FileManager {
  static Future<Map> getBook() async {
    String fileName = 'comedy.epub';
    String fullPath = path.join(io.Directory.current.path, fileName);
    var targetFile = io.File(fullPath);
    List<int> bytes = await targetFile.readAsBytes();

    EpubBook epubBook = await EpubReader.readBook(bytes);

    EpubContent? bookContent = epubBook.Content;

    Map common = {
      "title": epubBook.Title,
      "author": epubBook.Author,
      "firstChapterTitle": epubBook.Chapters?[1].Title,
      "firstChapterContent": epubBook.Chapters?[1].HtmlContent,
      "secondChapterTitle": epubBook.Chapters?[2].Title,
      "secondChapterContent": epubBook.Chapters?[2].HtmlContent,
      "thirdChapterTitle": epubBook.Chapters?[3].Title,
      "thirdChapterContent": epubBook.Chapters?[3].HtmlContent,
    };

    return common;
  }
}
