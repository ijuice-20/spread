import 'package:go_router/go_router.dart';
import 'package:spread/features/news/domain/domain.dart';

import '../features/authentication/presentation/sign_in_page.dart';
import '../features/news/presentation/news_details_page.dart';
import '../home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/sign-up',
  routes: [
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomePage(),
      ),
    ),
    GoRoute(
      path: '/news-details',
      builder: (context, state) => NewsDetails(
        newsData: state.extra as News,
      ),
    ),
    // StatefulShellRoute.indexedStack(
    //   builder: (context, state, navigationShell) {
    //     return BottomNavScaffold(
    //       navigationShell: navigationShell,
    //     );
    //   },
    //   branches: [
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/home',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: HomePage(),
    //           ),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/explore',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: ExplorePage(),
    //           ),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/bookmarks',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: BookmarksPage(),
    //           ),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/profile',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: ProfilePage(),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  ],
);
