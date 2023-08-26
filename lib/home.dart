import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:spread/features/events/presentation/presentation.dart';

import 'features/glance/presentation/glance_page.dart';
import 'features/news/presentation/reads_page.dart';
import 'features/profile/presentation/profile_page.dart';

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
    const EventsPage(),
    const ProfilePage(),
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
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: plusJakartaSansRegular12,
            selectedLabelStyle: plusJakartaSansRegular14,
            showUnselectedLabels: true,
            unselectedItemColor: const Color(0xFF969696),
            selectedItemColor: const Color(0xFF5364FF),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                label: 'Glance',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-glance.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-glance-selected.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Reads',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-read.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-read-selected.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Events',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-events.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-events-selected.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-profile.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SvgPicture.asset(
                    'assets/icons/ic-profile-selected.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
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
