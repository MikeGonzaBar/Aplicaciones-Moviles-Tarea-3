import 'package:flutter/material.dart';
import 'package:tarea3/pages/selected_book.dart';

class BookItem extends StatelessWidget {
  final dynamic book;
  const BookItem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SelectedBook(
                  bookData: book,
                ),
              ),
            );
          },
          child: Image.network(
            "${book["volumeInfo"]["imageLinks"] != null ? book["volumeInfo"]["imageLinks"]["thumbnail"] : "https://library.msu.ac.zw/img/nocover.png"}",
            width: 150,
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 12, right: 12),
          child: Text(
            "${book["volumeInfo"]["title"] ?? "Title not available"}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
