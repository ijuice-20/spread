import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spread/app/application/values/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1C51F7),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 40,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/img-test.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          width: 4,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Text(
                      'Jordan Belfort',
                      style: plusJakartaSansSemiBold20.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    child: Text(
                      '+91 8281384617',
                      style: plusJakartaSansLight12.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'wolf.of.wallstreet@gmail.com',
                    style: plusJakartaSansLight12.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 29,
                    )
                  ]),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MenuItem(
                      iconPath: 'assets/icons/ic-about-us.svg',
                      title: 'About Us',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-privacy.svg',
                      title: 'Privacy Policy',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-tos.svg',
                      title: 'Terms of Service',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-share-with-friends.svg',
                      title: 'Share with Friends',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-feedback.svg',
                      title: 'Help & Feedback',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-delete.svg',
                      title: 'Delete Account',
                    ),
                    MenuItem(
                      iconPath: 'assets/icons/ic-logout.svg',
                      title: 'Log out',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
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
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 14,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                title,
                style: plusJakartaSansRegular16,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey[500],
            )
          ],
        ),
      ),
    );
  }
}
