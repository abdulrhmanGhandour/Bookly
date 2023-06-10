import 'package:bookly_app/features/home/presanteion/view/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presanteion/view/book_details_view.dart';
import '../../features/splash/presanteion/view/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';

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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
