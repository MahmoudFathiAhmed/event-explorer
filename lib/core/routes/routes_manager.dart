import 'package:event_explorer/features/start/data/models/event.dart';
import 'package:event_explorer/features/start/presentation/views/event_details_screen.dart';
import 'package:event_explorer/features/start/presentation/views/start_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String startRoute = '/startRoute';
  static const String eventDetailsRoute = '/eventDetailsRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const StartScreen());

      case Routes.startRoute:
        return MaterialPageRoute(builder: (_) => const StartScreen());

      case Routes.eventDetailsRoute:
        return MaterialPageRoute(
            builder: (_) => EventDetailsScreen(
                  event: args as Event,
                ));

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
