import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              context.push('/home/news-details');
            },
            child: const Text(
              'Home',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'ExplorePage',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.close_rounded,
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: const Center(
          child: Text(
            'NewsDetails',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'BookmarksPage',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'ProfilePage',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
