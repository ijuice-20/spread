import 'package:flutter/material.dart';
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
        const SliverPadding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: ModuleCard(
              title: 'Types of company Registrations',
              caption: 'private limited? public limited? limited edition? wt..',
              isLearning: true,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 36,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Explore Modules',
              style: plusJakartaSansMedium20,
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: ModuleCard(
              title: 'The North Star Metric',
              caption: 'ultimate goal that sets the direction of the company',
              isLearning: false,
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: ModuleCard(
              title: 'Managing Remote (Newly) Workers',
              caption: 'how to control them just like we do it with “remote”',
              isLearning: false,
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
