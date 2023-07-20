import 'package:bookly_app/core/utls/service_locator.dart';
import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impi.dart';
import 'package:bookly_app/features/home/presanteion/manger/similar%20books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presanteion/view/home_view.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impil.dart';
import 'package:bookly_app/features/search/presanteion/manger/search%20cubit/search_view_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presanteion/view/book_details_view.dart';
import '../../features/search/presanteion/view/search_view.dart';
import '../../features/splash/presanteion/view/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpi>(),
          ),
          child: BookDetailsView(
            books: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => SearchViewCubit(
            getIt.get<SearchRepoImpil>(),
          ),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
