import 'package:bookly_app/features/home/data/repo/home_repo_impi.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impil.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpi>(
    HomeRepoImpi(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImpil>(
    SearchRepoImpil(getIt.get<ApiService>()),
  );
}
