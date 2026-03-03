import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case '/about':
        return MaterialPageRoute(
          builder: (_) => const AboutPage(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(
          child: Text("ERROR PAGE"),
        ),
      ),
    );
  }
}