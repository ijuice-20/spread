import 'package:go_router/go_router.dart';

import '../app/application/presentation/bottom_nav_scaffold.dart';
import '../features/authentication/presentation/sign_in_page.dart';
import '../home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/sign-up',
  routes: [
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignInPage(),
    ),
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
