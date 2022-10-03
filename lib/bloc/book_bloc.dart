import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookState get initialState => BookInitialState();

  BookBloc() : super(BookInitialState()) {
    on<SearchingEvent>(_searchBook);
  }

  Future<dynamic> _searchBook(SearchingEvent event, Emitter emit) async {
    emit(LoadingState());

    String requiredTitle = event.bookTitleSearch;
    dynamic bookList;
    final apiReq = Uri(
        scheme: "https",
        host: "www.googleapis.com",
        path: "books/v1/volumes",
        queryParameters: {"q": requiredTitle});
    try {
      dynamic response = await http.get(apiReq);
      bookList = jsonDecode(response.body);

      if (bookList["items"] == null) {
        throw Exception();
      }

      emit(ResultsFoundState(books: bookList["items"]));

      // emit(ResultsFound(books));
    } catch (e) {
      // ignore: prefer_const_constructors
      emit(LoadingErrorState(
          errorMessage: "Error inesperado en la busqueda de libros"));
    }
  }
}
