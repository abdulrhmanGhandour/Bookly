import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../home/data/model/book model/book_model.dart';
import '../../../data/repo/search_repo.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit(this.searchRepo) : super(SearchViewInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBook({required String bookName}) async {
    emit(SearchViewLoding());
    var result = await searchRepo.fetchSearchBook(bookName: bookName);
    result.fold((failuer) {
      emit(SearchViewFailuer(failuer.errorMesage));
    }, (books) {
      emit(SearchViewSuccsess(books));
    });
  }
}
