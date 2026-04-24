import 'route_names.dart';

enum AppTab { home, cart, profile, settings }

// Which route a tab press navigates to
const Map<AppTab, String> tabRootRoutes = {
  AppTab.home: RouteNames.home,
  AppTab.cart: RouteNames.cart,
  AppTab.profile: RouteNames.profile,
  AppTab.settings: RouteNames.settings,
};

// Which tab is highlighted when a route is active
const Map<String, AppTab> routeOwnership = {
  RouteNames.home: AppTab.home,
  RouteNames.checkout: AppTab.home,
  RouteNames.payment: AppTab.home,
  RouteNames.profile: AppTab.profile,
  RouteNames.settings: AppTab.settings,
  RouteNames.address: AppTab.settings,
  RouteNames.cart: AppTab.cart,
};
