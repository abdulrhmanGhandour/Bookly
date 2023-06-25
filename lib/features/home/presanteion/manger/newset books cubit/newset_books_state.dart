part of 'newset_books_cubit.dart';

@immutable
abstract class NewsetBooksState {}

class NewsetBooksInitial extends NewsetBooksState {}

class  NewsetBooksLoding extends NewsetBooksState {}

class  NewsetBooksSuccsess extends NewsetBooksState {
  final List<BookModel> books;

   NewsetBooksSuccsess(this.books);
}

class  NewsetBooksFailuer extends NewsetBooksState {
  final String errMessage;

   NewsetBooksFailuer(this.errMessage);
}
