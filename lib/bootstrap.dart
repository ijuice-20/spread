import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      // WidgetsFlutterBinding.ensureInitialized();
      // await Firebase.initializeApp();
      runApp(
        ProviderScope(
          overrides: const [],
          observers: const [],
          child: await builder(),
        ),
      );
    },
    (error, stack) {},
  );
}
