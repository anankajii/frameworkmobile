import 'package:flutter/material.dart';
import 'routes.dart';

class Acara19App extends StatelessWidget {
  const Acara19App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}