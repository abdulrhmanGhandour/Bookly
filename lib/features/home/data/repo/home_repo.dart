import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failuer.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
