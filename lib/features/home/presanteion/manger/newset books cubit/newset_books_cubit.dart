import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/model/book model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoding());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failuer) {
      emit(NewsetBooksFailuer(failuer.errorMesage));
    }, (books) {
      emit(NewsetBooksSuccsess(books));
    });
  }
}
