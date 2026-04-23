import 'package:go_router/go_router.dart';
import 'package:navigation_with_flutter/home_screen.dart';
import 'package:navigation_with_flutter/product_details_screen.dart';
import 'package:navigation_with_flutter/profile_screen.dart';
import 'package:navigation_with_flutter/settings_screen.dart';

final routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/profile', builder: (context, state) => ProfileScreen()),
    GoRoute(path: '/settings', builder: (context, state) => SettingsScreen()),
    GoRoute(
      path: '/productDetails',
      name: 'ProductDetails',
      builder: (context, state) =>
          ProductDetailsScreen(id: state.uri.queryParameters['id']!),
    ),
  ],
);
