import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spread/app/application/presentation/presentation.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  static const name = [
    'Web Summit 2023',
    'Women Startup Summit 5.0',
    'Seeding Kerala',
    'Y Combinator',
  ];
  static const description = [
    'Annual technology conference which brings together leading speakers, tech’s biggest companies, top media outlets',
    'Bringing together successful women leaders, startup founders, policy makers and aspiring women entrepreneurs at a common platform to share their experiences, aspirations and celebrate success stories',
    'Bringing together the HNI network of Kerala and showcasing opportunities to invest in the best startups from Kerala and other parts of India.',
    'Y Combinator',
  ];
  static const founders = [
    ['Lisbon, Portugal'],
    ['Kerala Technology\nInnovation Zone, Kochi'],
    ['Leela Ravis,\nKovalam'],
    ['Paul Graham', 'Jessica Livingston', 'Robert Morris', 'Trevor Blackwell'],
  ];
  static const year = [
    'Nov 13-16',
    'Sep 29',
    'Nov 3-4',
    '2005',
  ];
  static const category = [
    'web summit',
    'KSUM',
    'KSUM',
    'Startup Accelerator Company',
  ];
  static const imageLink = [
    'https://braziljournal.com/wp-content/uploads/2022/06/1895a161-de7e-3251-4cd1-f6b965e510c7.jpg',
    'https://www.bigspeak.com/wp-content/uploads/2019/06/Tan-Le-Stage-1024x576.jpg',
    'https://cdn.inc42.com/wp-content/uploads/2022/12/social-1.jpg',
    'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_540,q_100,w_1080/v1/gcs/platform-data-startupgrind/blog/YC_EOKAgJ3.jpg',
  ];
  static const links = [
    'https://www.crunchbase.com/',
    'https://www.vox.com/',
    'https://www.producthunt.com/',
    'https://www.ycombinator.com/',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'Events',
          svgPath: 'assets/icons/ic-read.svg',
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 0 : 16,
                left: 16,
                right: 16,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF0F3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  imageLink[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const SizedBox(
                              height: 160,
                              width: double.infinity,
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: const Alignment(0, -0.7),
                                end: const Alignment(0, 1),
                                colors: [
                                  Colors.black.withOpacity(0),
                                  Colors.black,
                                ],
                              ),
                            ),
                            child: const SizedBox(
                              height: 160,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            left: 12,
                            bottom: 12,
                            child: Text(
                              name[index],
                              style: plusJakartaSansExtraBold20.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 16,
                          bottom: 24,
                        ),
                        child: Text(
                          description[index],
                          style: plusJakartaSansRegular16.copyWith(
                            color: const Color(0xFF737373),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DecoratedBox(
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Color(0xFFD6D6D6),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 32,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        'Place',
                                        style: plusJakartaSansRegular14.copyWith(
                                          color: const Color(0xFF737373),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      founders[index][0],
                                      style: plusJakartaSansSemiBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Text(
                                      'Date',
                                      style: plusJakartaSansRegular14.copyWith(
                                        color: const Color(0xFF737373),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    year[index],
                                    style: plusJakartaSansSemiBold16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 40,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                category[index],
                                style: plusJakartaSansRegular14.copyWith(
                                  color: const Color(0xFF737373),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.grey,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  padding: EdgeInsets.zero,
                                  side: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {
                                  launchUrlString(
                                    links[index],
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 28,
                                    vertical: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Register Now',
                                        style: plusJakartaSansSemiBold14.copyWith(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/icons/ic-visit-website-black.svg',
                                          height: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            childCount: 4,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        )
      ],
    );
  }
}
