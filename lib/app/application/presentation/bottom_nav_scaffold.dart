import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Theme(
        data: ThemeData(
          fontFamily: GoogleFonts.getFont('Plus Jakarta Sans').fontFamily,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hintColor: Colors.transparent,
        ),
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) {
            navigationShell.goBranch(index);
          },
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          destinations: const [
            NavigationDestination(
              tooltip: '',
              icon: FlutterLogo(),
              label: 'Home',
            ),
            NavigationDestination(
              tooltip: '',
              icon: FlutterLogo(),
              label: 'Explore',
            ),
            NavigationDestination(
              tooltip: '',
              icon: FlutterLogo(),
              label: 'Bookmarks',
            ),
            NavigationDestination(
              tooltip: '',
              icon: FlutterLogo(),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
