import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spread/app/application/values/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List _titlesPersonal = [
    'Activity',
    'Learnings',
    'Bookmarks',
    'Registered Events',
  ];
  static const List _iconPathsPersonal = [
    'assets/icons/profile-icons/ic-activity.png',
    'assets/icons/profile-icons/ic-learning.png',
    'assets/icons/profile-icons/ic-bookmark.png',
    'assets/icons/profile-icons/ic-events.png',
  ];

  static const List _titlesPreference = [
    'Appearance',
    'Notifications',
    'Share with friends',
  ];

  static const List _iconPathsPreference = [
    'assets/icons/profile-icons/ic-appearance.png',
    'assets/icons/profile-icons/ic-notifications.png',
    'assets/icons/profile-icons/ic-share.png',
  ];

  static const List _titlesApp = [
    'About Us',
    'Privacy policy',
    'Terms of Service',
    'Help and Feedback',
  ];

  static const List _iconPathsApp = [
    'assets/icons/profile-icons/ic-about.png',
    'assets/icons/profile-icons/ic-privacy.png',
    'assets/icons/profile-icons/ic-tos.png',
    'assets/icons/profile-icons/ic-feedback.png',
  ];

  static const List _titlesEnd = [
    'Delete Account',
    'Log Out',
  ];

  static const List _iconPathsEnd = [
    'assets/icons/profile-icons/ic-delete-acc.png',
    'assets/icons/profile-icons/ic-logout.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 24,
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: SvgPicture.asset(
                    'assets/icons/ic-arrow.svg',
                  ),
                ),
                Text(
                  'Profile',
                  style: GoogleFonts.dmSerifDisplay().copyWith(
                    fontSize: 20,
                  ),
                ),
                Image.asset(
                  'assets/icons/profile-icons/ic-edit.png',
                  height: 16,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 16,
                bottom: 32,
              ),
              child: Divider(
                height: 0,
                color: Color(0XCC828282),
              ),
            ),
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/img-test.jpg',
                  ),
                  radius: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    'Jordan Belfort',
                    style: plusJakartaSansSemiBold20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                  ),
                  child: Text(
                    '+91 8281384617',
                    style: plusJakartaSansLight12.copyWith(
                      color: const Color(0xFF737373),
                    ),
                  ),
                ),
                Text(
                  'wolf.of.wallstreet@gmail.com',
                  style: plusJakartaSansLight12.copyWith(
                    color: const Color(0xFF737373),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 56,
              ),
              child: CategoryMenu(
                category: 'Personal',
                titles: _titlesPersonal,
                iconPaths: _iconPathsPersonal,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 56,
              ),
              child: CategoryMenu(
                category: 'Preferences',
                titles: _titlesPreference,
                iconPaths: _iconPathsPreference,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 56,
              ),
              child: CategoryMenu(
                category: 'App',
                titles: _titlesApp,
                iconPaths: _iconPathsApp,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 32,
                bottom: 40,
              ),
              child: CategoryMenu(
                category: '',
                titles: _titlesEnd,
                iconPaths: _iconPathsEnd,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({
    super.key,
    required this.category,
    required this.titles,
    required this.iconPaths,
  });

  final String category;
  final List titles;
  final List iconPaths;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 32,
          ),
          child: Text(
            category,
            style: plusJakartaSansSemiBold16.copyWith(
              color: const Color(0xCC828282),
            ),
          ),
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: titles.length,
          itemBuilder: (context, index) => MenuItem(
            iconPath: iconPaths[index],
            title: titles[index],
          ),
          separatorBuilder: (BuildContext context, int index) => const Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 44,
            ),
            child: Divider(
              height: 0,
              color: Color(0x33828282),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {},
      child: Row(
        children: [
          Image.asset(
            iconPath,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              title,
              style: plusJakartaSansMedium16,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/icons/ic-forward.svg',
          ),
        ],
      ),
    );
  }
}
