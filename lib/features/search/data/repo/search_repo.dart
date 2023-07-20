import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';
import '../../../home/data/model/book model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(
      {required String bookName});
}
