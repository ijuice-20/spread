import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/colors.dart';
import 'package:spread/app/application/values/text_style.dart';

import '../domain/reads.dart';

class ReadsCard extends ConsumerStatefulWidget {
  const ReadsCard({
    super.key,
    required this.readsData,
  });

  final Reads readsData;

  @override
  ConsumerState<ReadsCard> createState() => _ReadsCardState();
}

class _ReadsCardState extends ConsumerState<ReadsCard> {
  bool showOverlay = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(
          '/reads-details',
          extra: widget.readsData,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MainImage(
            readsData: widget.readsData,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 24,
            ),
            child: Publisher(
              readsData: widget.readsData,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
            child: Text(
              widget.readsData.heading,
              style: GoogleFonts.dmSerifDisplay().copyWith(
                fontSize: 26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 24,
              bottom: 24,
              left: 24,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                DecoratedBox(
                  decoration: DottedDecoration(
                    color: const Color(0xFFD6D6D6),
                    linePosition: LinePosition.left,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'at a glance',
                          style: plusJakartaSansSemiBold14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Text(
                            '1 Empress, a powerful DRM cracker, has gained fame for liberating high-profile games from digital rights management software like Denuvo. She sees DRM as a limitation on true ownership and believes preserving games should not be considered a crime.',
                            style: plusJakartaSansRegular14,
                          ),
                        ),
                        !showOverlay
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  bottom: 24,
                                ),
                                child: Text(
                                  'Empress, a powerful DRM cracker, has gained fame for liberating high-profile games from digital rights management software like Denuvo. She sees DRM as a limitation on true ownership and believes preserving games should not be considered a crime.\n\nEmpress, a powerful DRM cracker, has gained fame for liberating high-profile games from digital rights management software like Denuvo. She sees DRM as a limitation on true ownership and believes preserving games should not be considered a crime.',
                                  style: plusJakartaSansRegular14,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
                showOverlay
                    ? SizedBox(
                        width: double.infinity,
                        height: 136,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              stops: const [
                                0,
                                0.6,
                                0.89,
                              ],
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                              colors: [
                                const Color(0xFFF8F8F8).withOpacity(0),
                                const Color(0xFFF8F8F8).withOpacity(0.8),
                                const Color(0xFFF8F8F8),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        showOverlay = !showOverlay;
                      });
                    },
                    child: Text(
                      showOverlay ? '+ read more' : '- read less',
                      style: plusJakartaSansSemiBold14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              '7 min read',
              style: plusJakartaSansRegular12.copyWith(
                color: const Color(0xFF969794),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
    required this.readsData,
  });
  final Reads readsData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    readsData.newsImage,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Positioned(
          top: 188,
          right: 32,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFFFE746F),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                strokeAlign: BorderSide.strokeAlignCenter,
                width: 2,
                color: lmBackground,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Text(
                readsData.tag,
                style: plusJakartaSansLight12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Publisher extends StatelessWidget {
  const Publisher({
    super.key,
    required this.readsData,
  });
  final Reads readsData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 32,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: CachedNetworkImageProvider(readsData.profileImage),:
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: Text(
            readsData.publisher,
            style: plusJakartaSansMedium14,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/ic-verified.svg',
          height: 20,
          width: 20,
        ),
      ],
    );
  }
}
