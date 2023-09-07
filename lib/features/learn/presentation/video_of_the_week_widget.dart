import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoOfTheWeek extends StatelessWidget {
  const VideoOfTheWeek({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Video of the week',
          style: TextStyle(
            fontFamily: 'Balig Upright',
            fontSize: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 112,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // color: const Color(0xFF262626),
                    border: Border.all(
                      color: Colors.black,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 66,
                      right: 24,
                      bottom: 24,
                      left: 24,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Student\'s Guide To Becoming A Successful Startup Founder',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 22,
                            color: Colors.black,
                            // color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Divider(
                            color: Color(0xFFBBB9B9),
                            // color: Color(0xFF4E4E4E),
                            height: 0,
                            thickness: 0.5,
                          ),
                        ),
                        const YouTuberInfo(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 165.37,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/image-thumbnail-ytb.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class YouTuberInfo extends StatelessWidget {
  const YouTuberInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/img-yc.png',
          ),
          radius: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Y Combinator',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      color: Colors.black,
                      // color: Colors.white,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/ic-verified.svg',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
              Text(
                '1.12M subscribers',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 9,
                  color: const Color(0xFF828282),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
