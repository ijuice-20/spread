import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spread/app/application/presentation/presentation.dart';
import 'package:spread/features/reads/data/reads_repository.dart';

import 'reads_card.dart';

final readsStreamProvider = StreamProvider(
  (ref) => ref.watch(readsRepositoryProvider).readsStream(),
);

class ReadsPage extends ConsumerWidget {
  const ReadsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readsStreamValue = ref.watch(readsStreamProvider);
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'Reads',
          svgPath: 'assets/icons/ic-read.svg',
        ),
        readsStreamValue.when(
          data: (readsData) => SliverList.separated(
            itemCount: readsData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 0 ? 0 : 40,
                ),
                child: ReadsCard(
                  readsData: readsData.elementAt(index),
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
