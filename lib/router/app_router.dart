import 'package:go_router/go_router.dart';
import 'package:navigation_with_flutter/screens/cart/cart_screen.dart';
import '../config/route_names.dart';
import '../navigation/app_shell.dart';
import '../screens/home/home_screen.dart';
import '../screens/home/checkout_screen.dart';
import '../screens/home/payment_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/settings/address_screen.dart';

final appRouter = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) =>
          AppShell(location: state.uri.path, child: child),
      routes: [
        GoRoute(
          path: RouteNames.home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: RouteNames.cart,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          path: RouteNames.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: RouteNames.settings,
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: RouteNames.checkout,
          builder: (context, state) => const CheckoutScreen(),
        ),
        GoRoute(
          path: RouteNames.payment,
          builder: (context, state) => const PaymentScreen(),
        ),
        GoRoute(
          path: RouteNames.address,
          builder: (context, state) => const AddressScreen(),
        ),
      ],
    ),
  ],
);
