// ignore_for_file:prefer-match-file-name

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:takehome/home_page.dart';
import 'package:takehome/news/view/page/news_page.dart';

part 'routes.g.dart';

final initialLocation = const HomeRoute().location;

List<RouteBase> get routes => $appRoutes;

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [TypedGoRoute<NewsRoute>(path: ':source')],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class NewsRoute extends GoRouteData {
  const NewsRoute(this.source);

  final String source;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final id = state.pathParameters['source']!;
    print('NewsRoute id: $id');
    return NewsPage(
      source: id,
    );
  }
}
