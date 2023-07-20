import 'package:bookly_app/core/errors/failuer.dart';
import 'package:bookly_app/core/utls/api_service.dart';
import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpil implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpil(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(
      {required String bookName}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$bookName');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailuer.fromDioException(e),
        );
      }
      return left(
        ServerFailuer(e.toString()),
      );
    }
  }
}
