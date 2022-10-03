part of 'book_bloc.dart';

@immutable
abstract class BookEvent extends Equatable {
  const BookEvent();

  @override
  List<dynamic> get props => [];
}

class SearchingEvent extends BookEvent {
  final String bookTitleSearch;

  const SearchingEvent({required this.bookTitleSearch});
  @override
  List<dynamic> get props => [bookTitleSearch];
}
