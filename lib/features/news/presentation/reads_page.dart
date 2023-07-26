import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:spread/features/news/data/news_repository.dart';

import 'news_card.dart';

final newsStreamProvider = StreamProvider(
  (ref) => ref.watch(newsRepositoryProvider).newsStream(),
);

class ReadsPage extends StatelessWidget {
  const ReadsPage({
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
