class _AppRoute {
  const _AppRoute({
    required this.route,
    required this.name,
  });

  final String route;
  final String name;
}

abstract class AppRoutes {
  static const home = _AppRoute(route: '/home', name: 'home');
}
