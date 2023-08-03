import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spread/app/application/values/text_style.dart';

class GlanceTweet extends StatelessWidget {
  const GlanceTweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              const SizedBox(
                height: 40,
                width: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/img-test.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Inc42',
                          style: plusJakartaSansSemiBold14,
                        ),
                        SvgPicture.asset(
                          'assets/icons/ic-verified.svg',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                    Text(
                      'Just now',
                      style: plusJakartaSansRegular10.copyWith(
                        color: const Color(0xFF737373),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 42,
            top: 8,
            bottom: 8,
            right: 24,
          ),
          child: DecoratedBox(
            decoration: DottedDecoration(
              color: const Color(0xFFD6D6D6),
              linePosition: LinePosition.left,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 26,
                top: 8,
                bottom: 16,
              ),
              child: Column(
                children: [
                  Text(
                    'Fintech Startup Wint askdjbckjasbdc akshcbakjsbc khjabsdckjb Wealth Gets Online Bond Platform Provider Licence From SEBI',
                    style: plusJakartaSansMedium14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: SizedBox(
                      height: 144,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/img-test.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        buildActionItem(
                          svgPath: 'assets/icons/ic-up-punch.svg',
                          reactionCount: '29.8K',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: buildActionItem(
                            svgPath: 'assets/icons/ic-share.svg',
                            reactionCount: '29.3K',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildActionItem({
    required String svgPath,
    required String reactionCount,
  }) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          height: 15,
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            reactionCount,
            style: plusJakartaSansSemiBold10.copyWith(
              color: const Color(
                0xFF969696,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
