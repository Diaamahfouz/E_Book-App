import 'package:e_book/features/home/presentation/views/home_view.dart';
import 'package:e_book/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview ='/homeView';
 static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeview,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
}