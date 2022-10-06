import 'dart:convert';

import 'package:http/http.dart' as http;

class BookRepository {
  static final BookRepository bookRepository = BookRepository._internal();
  factory BookRepository() => bookRepository;

  BookRepository._internal();

  Future<dynamic> getBooks(String requiredTitle) async {
    dynamic bookList;
    final apiReq = Uri(
        scheme: "https",
        host: "www.googleapis.com",
        path: "books/v1/volumes",
        queryParameters: {"q": requiredTitle});
    try {
      dynamic response = await http.get(apiReq);
      bookList = jsonDecode(response.body);
      return bookList;
    } catch (e) {
      throw "Error";
    }
  }
}
