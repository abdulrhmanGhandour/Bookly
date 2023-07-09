import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoding());  
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failuer) {
      emit(SimilarBooksFailuer(failuer.errorMesage));
    }, (books) {
      emit(SimilarBooksSuccsess(books));
    });
  }
}
