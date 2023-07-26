import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:spread/features/news/presentation/news_card.dart';

import '../domain/news.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({
    super.key,
    required this.newsData,
  });
  final News newsData;
  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  ScrollController scrollController = ScrollController();
  double progress = 0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      progress = scrollController.offset / scrollController.position.maxScrollExtent;
      setState(() {});
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(progress.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.withOpacity(0.2),
              color: Colors.red,
              minHeight: 2.4,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: ListView(
          controller: scrollController,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 24,
              ),
              child: Publisher(
                newsData: widget.newsData,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 16,
              ),
              child: Text(
                widget.newsData.heading,
                style: GoogleFonts.dmSerifDisplay().copyWith(
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 16,
                bottom: 4,
              ),
              child: Text(
                'By ${widget.newsData.author}',
                style: plusJakartaSansRegular10.copyWith(
                  color: const Color(0xFF969794),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Row(
                children: [
                  Text(
                    'June 15, 20233',
                    style: plusJakartaSansRegular10.copyWith(
                      color: const Color(0xFF969794),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      height: 4,
                      width: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFEDE9E9),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '7 min read',
                    style: plusJakartaSansRegular10.copyWith(
                      color: const Color(0xFF969794),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32,
              ),
              child: Image.network(
                widget.newsData.newsImage,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                bottom: 40,
              ),
              child: Text(
                widget.newsData.content,
                style: plusJakartaSansLight16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
              ),
              child: Text(
                'AI generated summary',
                style: plusJakartaSansLight14.copyWith(
                  color: const Color(
                    0xFF969794,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text('The original article published by',
                  style: plusJakartaSansLight14.copyWith(
                    color: const Color(
                      0xFF969794,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text('The Washington Post',
                  style: plusJakartaSansMedium14.copyWith(
                    color: const Color(
                      0xFF0300AE,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                bottom: 48,
              ),
              child: Text(
                '© 2023 WP Company LLC',
                style: plusJakartaSansLight14.copyWith(
                  color: const Color(
                    0xFF969794,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
