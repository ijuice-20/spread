import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32,
              right: 24,
              bottom: 32,
              left: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reads',
                      style: GoogleFonts.dmSerifDisplay().copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/ic-read.svg',
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    ),
                    const CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(
                        'assets/images/img-test.jpg',
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 16,
                  ),
                  child: Divider(
                    height: 0,
                    color: Color(0X33828282),
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
