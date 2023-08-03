import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/colors.dart';
import 'package:spread/features/news/data/news_repository.dart';

import 'news_card.dart';

final newsStreamProvider = StreamProvider(
  (ref) => ref.watch(newsRepositoryProvider).newsStream(),
);

class ReadsPage extends ConsumerWidget {
  const ReadsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsStreamValue = ref.watch(newsStreamProvider);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          pinned: false,
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reads',
                  style: GoogleFonts.dmSerifDisplay().copyWith(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: SvgPicture.asset(
                    'assets/icons/ic-read-white.svg',
                    height: 16,
                    width: 16,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xFF1C51F7),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: const Color(0xFF1C51F7),
            height: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 16,
                  decoration: const BoxDecoration(
                    color: lmBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        newsStreamValue.when(
          data: (newsData) => SliverList.separated(
            itemCount: newsData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 0 ? 0 : 40,
                ),
                child: NewsCard(
                  newsData: newsData.elementAt(index),
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Divider(
                height: 0,
                thickness: 0.7,
                color: Colors.grey[300],
              ),
            ),
          ),
          error: (e, _) => const SliverToBoxAdapter(
            child: Text('err'),
          ),
          loading: () => const SliverToBoxAdapter(
            child: Center(
              child: Text('Loading'),
            ),
          ),
        ),
      ],
    );
  }
}
