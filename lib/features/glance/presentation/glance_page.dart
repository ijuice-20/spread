import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/colors.dart';
import 'package:spread/features/glance/data/data.dart';
import 'package:spread/features/glance/presentation/glance_tweet.dart';

final galnceStreamProvider = StreamProvider(
  (ref) => ref.watch(glanceRepositoryProvider).glanceStream(),
);

class GlancePage extends ConsumerWidget {
  const GlancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final glanceValue = ref.watch(galnceStreamProvider);
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
                  'Glance',
                  style: GoogleFonts.dmSerifDisplay().copyWith(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/ic-glance-white.svg',
                  height: 16,
                  width: 16,
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xFF1C51F7),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: const Color(0xFF1C51F7),
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 24,
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
