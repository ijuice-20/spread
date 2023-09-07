import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/presentation/presentation.dart';
import 'package:spread/app/application/values/text_style.dart';

import 'presentation.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'Learn',
          svgPath: 'assets/icons/ic-read.svg',
        ),
        const SliverToBoxAdapter(
          child: VideoOfTheWeek(),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 36,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Continue Learning',
              style: plusJakartaSansMedium20,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 8,
                  bottom: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Types of company Registrations',
                            style: GoogleFonts.dmSerifDisplay(
                              fontSize: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 20,
                            ),
                            child: Text(
                              'private limited? public limited? limited edition? wt..',
                              style: plusJakartaSansRegular14.copyWith(
                                color: const Color(0xFF686868),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.grey,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                              side: const BorderSide(
                                color: Colors.black,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Continue Learning',
                                    style: plusJakartaSansSemiBold14.copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/ic-start-learning.svg',
                                      height: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 144,
                      child: Image.asset(
                        'assets/images/img-learn-illustration.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        )
      ],
    );
  }
}
