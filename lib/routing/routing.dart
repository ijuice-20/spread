import 'package:go_router/go_router.dart';

import '../app/application/presentation/bottom_nav_scaffold.dart';
import '../home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => BottomNavScaffold(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/home',
                pageBuilder: (context, state) => const NoTransitionPage(
                      child: HomePage(),
                    ),
                routes: [
                  GoRoute(path: 'news-details', builder: (context, state) => NewsDetails()),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ExplorePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/bookmarks',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: BookmarksPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ProfilePage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
