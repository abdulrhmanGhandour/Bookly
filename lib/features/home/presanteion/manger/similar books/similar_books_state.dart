part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoding extends SimilarBooksState {}

class SimilarBooksSuccsess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccsess(this.books);
}

class SimilarBooksFailuer extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailuer(this.errMessage);
}
