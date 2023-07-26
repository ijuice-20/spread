import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';

import 'glance_tweet.dart';

class GlancePage extends StatelessWidget {
  const GlancePage({super.key});

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
            'Glance',
            style: GoogleFonts.dmSerifDisplay().copyWith(
              fontSize: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 32,
            bottom: 48,
          ),
          child: Text(
            'Bite Sized news that you\nshould never miss',
            style: plusJakartaSansRegular12,
          ),
        ),
        const GlanceTweet(),
        const GlanceTweet(),
        const GlanceTweet(),
      ],
    );
  }
}
