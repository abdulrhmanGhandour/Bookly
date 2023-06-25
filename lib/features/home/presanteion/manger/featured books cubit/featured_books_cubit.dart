import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/model/book model/book_model.dart';
import '../../../data/repo/home_repo.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoding());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failuer) {
      emit(FeaturedBooksFailuer(failuer.errorMesage));
    }, (books) {
      emit(FeaturedBooksSuccsess(books));
    });
  }
}
