part of 'search_view_cubit.dart';

abstract class SearchViewState extends Equatable {
  const SearchViewState();

  @override
  List<Object> get props => [];
}

class SearchViewInitial extends SearchViewState {}

class SearchViewLoding extends SearchViewState {}

class SearchViewSuccsess extends SearchViewState {
  final List<BookModel> book;

  const SearchViewSuccsess(this.book);
}

class SearchViewFailuer extends SearchViewState {
  final String errMessage;

  const SearchViewFailuer(this.errMessage);
}
