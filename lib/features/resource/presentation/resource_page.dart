import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../app/application/values/colors.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  static const name = [
    'Crunchbase',
    'Vox Media',
    'Product Hunt',
    'Y Combinator',
  ];
  static const founders = [
    ['Michael Arrington'],
    ['Tyler Bleszinski', 'Jerome Armstrong', 'Markos Moulitsas'],
    ['Ryan Hoover'],
    ['Paul Graham', 'Jessica Livingston', 'Robert Morris', 'Trevor Blackwell'],
  ];
  static const year = [
    '2007',
    '2011',
    '2013',
    '2005',
  ];
  static const category = [
    'Data as a Service',
    'Mass media company',
    'Website',
    'Startup Accelerator Company',
  ];
  static const imageLink = [
    'https://caliston.co.uk/wp-content/uploads/2019/12/crunch.png',
    'https://cdn.vox-cdn.com/thumbor/a8CCQj6urOLrWXf6jhcbDog9QS8=/0x0:1220x750/1200x0/filters:focal(0x0:1220x750):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/6911335/Vox_1220x750_Earth.0.jpg',
    'https://framerusercontent.com/images/3OegQRJqDPlY4NqPUTsuMAj7zBQ.jpg',
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
        SliverAppBar(
          expandedHeight: 120,
          pinned: false,
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resources',
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
            height: 18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 18,
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
                                image: NetworkImage(
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
                            child: Row(
                              children: [
                                Text(
                                  name[index],
                                  style: plusJakartaSansExtraBold20.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/ic-verified-cropped.svg',
                                  ),
                                ),
                              ],
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
                          'Leading provider of private-company prospecting and research solutions',
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
                                        'Founded by',
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
                                      'Founded in',
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
                                        'Visit Website',
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
