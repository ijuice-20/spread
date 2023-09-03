import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spread/app/application/presentation/presentation.dart';
import 'package:spread/features/glance/data/data.dart';
import 'package:spread/features/glance/presentation/glance_tweet.dart';

final glanceStreamProvider = StreamProvider(
  (ref) => ref.watch(glanceRepositoryProvider).glanceStream(),
);

class GlancePage extends ConsumerWidget {
  const GlancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final glanceValue = ref.watch(glanceStreamProvider);
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'Glance',
          svgPath: 'assets/icons/ic-glance.svg',
        ),
        glanceValue.when(
          data: (glanceData) => SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    GlanceTweet(
                      glanceData: glanceData.elementAt(index),
                    ),
                  ],
                );
              },
              childCount: glanceData
                  .length, // Replace this with the number of items in your scrollable list
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
