import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../config/tab_config.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final String location;

  const AppShell({
    required this.child,
    required this.location,
    super.key,
  });

  AppTab get _activeTab => routeOwnership[location] ?? AppTab.home;

  @override
  Widget build(BuildContext context) {
    final activeTab = _activeTab;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: AppTab.values.indexOf(activeTab),
        onDestinationSelected: (index) {
          final tab = AppTab.values[index];
          context.go(tabRootRoutes[tab]!);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
