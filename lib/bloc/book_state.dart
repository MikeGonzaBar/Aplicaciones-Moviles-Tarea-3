part of 'book_bloc.dart';

@immutable
abstract class BookState extends Equatable {
  const BookState();

  @override
  List<Object?> get props => [];
}

class BookInitialState extends BookState {}

class LoadingState extends BookState {}

class LoadingErrorState extends BookState {
  final String errorMessage;

  const LoadingErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [];
}

class ResultsFoundState extends BookState {
  final List<dynamic> books;

  const ResultsFoundState({required this.books});

  @override
  List<Object?> get props => [books];
}
