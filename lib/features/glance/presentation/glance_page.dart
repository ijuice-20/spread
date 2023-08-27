import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      'Glance',
                      style: GoogleFonts.dmSerifDisplay().copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/ic-glance.svg',
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {
                        context.push(
                          '/profile',
                        );
                      },
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          'assets/images/img-test.jpg',
                        ),
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
