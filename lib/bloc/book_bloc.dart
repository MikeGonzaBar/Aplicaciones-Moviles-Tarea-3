import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookState get initialState => BookInitialState();

  BookBloc() : super(BookInitialState()) {
    on<SearchingEvent>(_searchBook);
  }

  void _searchBook(SearchingEvent event, Emitter emit) {
    try {
      emit(LoadingState());
      print("IMPRIMIENDO DESDE BLOC");
      print("Searching: ${event.bookTitleSearch}");
      String requiredTitle = event.bookTitleSearch;
      final _api = Uri(
          scheme: "https",
          host: "www.googleapis.com",
          path: "books/vi/volumes",
          queryParameters: {"q": requiredTitle});

      // emit(ResultsFound(books));
    } catch (e) {
      LoadingErrorState(
          errorMessage: "Error inesperado en la busqueda de libros");
    }
  }
}
