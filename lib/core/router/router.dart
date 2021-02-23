import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/view/landing/landing_screen.dart';

class NavigationRouter {
  static const String landingRoute = 'landingRoute';

  static MaterialPageRoute _pageRoute(Widget page, {RouteSettings settings}) {
    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingRoute:
        return _pageRoute(LandingScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings?.name}'),
            ),
          ),
        );
    }
  }
}
