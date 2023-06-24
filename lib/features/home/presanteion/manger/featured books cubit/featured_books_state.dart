part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoding extends FeaturedBooksState {}

class FeaturedBooksSuccsess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccsess(this.books);
}

class FeaturedBooksFailuer extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailuer(this.errMessage);
}
