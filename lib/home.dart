import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';

import 'features/news/data/news_repository.dart';
import 'features/news/presentation/news_card.dart';

final newsStreamProvider = StreamProvider(
  (ref) => ref.watch(newsRepositoryProvider).newsStream(),
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Center(
      child: Text(
        'Glance',
      ),
    ),
    const Reads(),
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

class Reads extends StatelessWidget {
  const Reads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 32,
          ),
          child: Text(
            'Reads',
            style: GoogleFonts.dmSerifDisplay().copyWith(
              fontSize: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 32,
          ),
          child: Text(
            'Must read news you should\nnever miss',
            style: plusJakartaSansRegular12,
          ),
        ),
        Consumer(
          builder: (context, ref, child) {
            final newsStreamValue = ref.watch(newsStreamProvider);
            return newsStreamValue.when(
              data: (newsData) => ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 48,
                    ),
                    child: Column(
                      children: [
                        NewsCard(
                          newsData: newsData.elementAt(index),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Divider(
                    height: 0,
                    thickness: 0.7,
                  ),
                ),
                itemCount: newsData.length,
              ),
              error: (e, _) => const Text('err'),
              loading: () => const Center(
                child: Text('Loading'),
              ),
            );
          },
        ),
      ],
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
