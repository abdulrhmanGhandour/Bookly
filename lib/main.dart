import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impi.dart';
import 'package:bookly_app/features/home/presanteion/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presanteion/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constens.dart';


void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
           getIt.get<HomeRepoImpi>()
          )..fetchFeaturedBooks(),
        ),
         BlocProvider(
          create: (context) => NewsetBooksCubit(
           getIt.get<HomeRepoImpi>()
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
