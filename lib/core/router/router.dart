import 'package:promilo/core/widgets/bottom_nav_widget.dart';
import 'package:promilo/features/authentication/presentation/page/login_page.dart';
import 'package:promilo/features/home/presentation/page/description_page.dart';
import 'package:promilo/features/home/presentation/page/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final router = GoRouter(
  initialLocation: LoginPage.routepath,
  routes: [
    GoRoute(
      path: HomePage.routePath,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: LoginPage.routepath,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: DescriptionPage.routePath,
      builder: (context, state) => const DescriptionPage(),
    ),
    GoRoute(
      path: BottomNaviWidet.routePath,
      builder: (context, state) => const BottomNaviWidet(),
    ),
  ],
);

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return router;
}
