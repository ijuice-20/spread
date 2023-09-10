import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:spread/features/glance/domain/domain.dart';

class GlanceTweet extends StatelessWidget {
  const GlanceTweet({
    super.key,
    required this.glanceData,
  });

  final Glance glanceData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        glanceData.profileImage,
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
                          glanceData.publisher,
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
                    glanceData.content,
                    style: plusJakartaSansMedium14,
                  ),
                  glanceData.image != null
                      ? Padding(
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
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    glanceData.image!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(
                          height: 16,
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
                          shareMessage:
                              '${glanceData.content} - Reported by ${glanceData.publisher}. Download Spread and Never miss a single startup news!',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: buildActionItem(
                            svgPath: 'assets/icons/ic-share.svg',
                            reactionCount: '29.3K',
                            shareMessage:
                                '${glanceData.content} - Reported by ${glanceData.publisher}. Download Spread and Never miss a single startup news!',
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
    required String shareMessage,
  }) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Share.share(shareMessage);
          },
          child: SvgPicture.asset(
            svgPath,
            height: 15,
            width: 15,
          ),
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
