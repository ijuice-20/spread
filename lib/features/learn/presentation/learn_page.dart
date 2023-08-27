import 'package:flutter/material.dart';

import '../../../app/application/presentation/presentation.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(
          title: 'Learn',
          svgPath: 'assets/icons/ic-read.svg',
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Text('Learn Page'),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        )
      ],
    );
  }
}
