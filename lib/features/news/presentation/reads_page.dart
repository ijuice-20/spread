import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spread/app/application/presentation/presentation.dart';
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
        const CustomAppBar(
          title: 'Reads',
          svgPath: 'assets/icons/ic-read.svg',
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
