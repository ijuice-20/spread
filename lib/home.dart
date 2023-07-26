import 'package:flutter/material.dart';

import 'features/glance/presentation/glance_page.dart';
import 'features/news/presentation/reads_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const GlancePage(),
    const ReadsPage(),
    const Center(
      child: Text(
        'Bookmarks',
      ),
    ),
    const Center(
      child: Text(
        'Profile',
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(
          0xFFF8F8F8,
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.amber[800],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              label: 'Glance',
              icon: Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'Reads',
              icon: Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'Bookmarks',
              icon: Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.abc),
            ),
          ],
        ),
        body: _widgetOptions[_selectedIndex],
      ),
    );
  }
}

// class ExplorePage extends StatelessWidget {
//   const ExplorePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Text(
//             'ExplorePage',
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class BookmarksPage extends StatelessWidget {
//   const BookmarksPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Text(
//             'BookmarksPage',
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Text(
//             'ProfilePage',
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
