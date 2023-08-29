import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.svgPath,
  });

  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 32,
      ),
      sliver: SliverAppBar(
        floating: true,
        backgroundColor: const Color(
          0xFFF8F8F8,
        ),
        elevation: 0,
        centerTitle: true,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: GoogleFonts.dmSerifDisplay().copyWith(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: SvgPicture.asset(
          svgPath,
          height: 16,
          width: 16,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: InkWell(
              onTap: () {
                context.push(
                  '/profile',
                );
              },
              child: const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(
                  'assets/images/img-test.jpg',
                ),
              ),
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Padding(
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: Divider(
              height: 0,
              color: Color(0X66828282),
            ),
          ),
        ),
      ),
    );
  }
}
