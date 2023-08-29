import 'package:go_router/go_router.dart';
import 'package:spread/features/profile/presentation/presentation.dart';
import 'package:spread/features/reads/domain/domain.dart';

import '../features/authentication/presentation/sign_in_page.dart';
import '../features/reads/presentation/reads_details_page.dart';
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
      path: '/reads-details',
      builder: (context, state) => ReadsDetails(
        readsData: state.extra as Reads,
      ),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
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
