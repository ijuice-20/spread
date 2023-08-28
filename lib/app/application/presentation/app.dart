import 'package:flutter/material.dart';
import 'package:spread/routing/routing.dart';

class SpreadApp extends StatelessWidget {
  const SpreadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
