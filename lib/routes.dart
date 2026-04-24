import 'package:go_router/go_router.dart';
import 'package:navigation_with_flutter/checkout_screen.dart';
import 'package:navigation_with_flutter/home_screen.dart';
import 'package:navigation_with_flutter/login_screen.dart';
import 'package:navigation_with_flutter/payment_screen.dart';
import 'package:navigation_with_flutter/product_details_screen.dart';
import 'package:navigation_with_flutter/profile_screen.dart';
import 'package:navigation_with_flutter/settings_screen.dart';

final routes = GoRouter(
  redirect: (context, state) {
    final protectedRoutes = ['/payment', '/checkout', '/address', '/profile'];

    final isProtected = protectedRoutes.contains(state.uri.path);
    print(isProtected);
    bool isAuthenticated = false;

    if (isProtected && !isAuthenticated) {
      return '/login';
    }
    return null;
  },
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/profile', builder: (context, state) => ProfileScreen()),
    GoRoute(path: '/settings', builder: (context, state) => SettingsScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/payment', builder: (context, state) => PaymentScreen()),
    GoRoute(path: '/checkout', builder: (context, state) => CheckoutScreen()),
    GoRoute(path: '/address', builder: (context, state) => SettingsScreen()),
    GoRoute(
      path: '/productDetails',
      name: 'ProductDetails',
      builder: (context, state) =>
          ProductDetailsScreen(id: state.uri.queryParameters['id']!),
    ),
  ],
);
