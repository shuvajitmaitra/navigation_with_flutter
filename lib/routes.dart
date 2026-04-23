import 'package:go_router/go_router.dart';
import 'package:navigation_with_flutter/home_screen.dart';
import 'package:navigation_with_flutter/profile_screen.dart';

final routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/profile', builder: (context, state) => ProfileScreen()),
  ],
);
