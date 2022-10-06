import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tarea3/repositories/book_repository.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookState get initialState => BookInitialState();

  final BookRepository bookRepository = BookRepository();
  BookBloc() : super(BookInitialState()) {
    on<SearchingEvent>(_searchBook);
  }

  Future<dynamic> _searchBook(SearchingEvent event, Emitter emit) async {
    emit(LoadingState());

    String requiredTitle = event.bookTitleSearch;
    dynamic bookList;
    try {
      bookList = await bookRepository.getBooks(requiredTitle);

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
