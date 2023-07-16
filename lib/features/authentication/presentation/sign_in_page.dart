import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spread/app/application/values/text_style.dart';
import 'package:spread/features/authentication/widget/sign_in_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 146,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to\nSpread',
                style: plusJakartaSansSemiBold36,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 26,
                  bottom: 64,
                ),
                child: Text(
                  'Sign up or log in below to access world-class journalism from premium publishers, curated by editors & experts',
                  style: plusJakartaSansMedium16,
                ),
              ),
              SignInButton(
                title: 'Sign in with Google',
                imagePath: 'assets/images/img-google.png',
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: SignInButton(
                  title: 'Sign in with Apple',
                  imagePath: 'assets/images/img-apple.png',
                  onTap: () {},
                ),
              ),
              SignInButton(
                title: 'Sign in with LinkedIn',
                imagePath: 'assets/images/img-linkedIn.png',
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 51,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                      child: Divider(
                        height: 0,
                        color: Color(0xFFEEEEEE),
                        thickness: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        'Or continue with',
                        style: plusJakartaSansMedium12.copyWith(color: const Color(0xFFB1B1B1)),
                      ),
                    ),
                    const Flexible(
                      child: Divider(
                        height: 0,
                        color: Color(0xFFEEEEEE),
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 51,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                            16,
                          ),
                          child: Text(
                            '+91',
                            style: plusJakartaSansRegular14.copyWith(
                              color: const Color(0xFF969794),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            top: 16,
                            bottom: 16,
                          ),
                          child: Text(
                            'Phone Number',
                            style: plusJakartaSansRegular14.copyWith(
                              color: const Color(0xFF969794),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 51,
                  right: 51,
                ),
                child: RichText(
                  text: TextSpan(
                      style: plusJakartaSansSemiBold10.copyWith(
                        color: const Color(
                          0xFF999999,
                        ),
                      ),
                      children: [
                        const TextSpan(
                          text: 'By signing up, you agree to our ',
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: plusJakartaSansSemiBold10.copyWith(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString(
                                'https://www.informed.so/legal/terms-of-service',
                                mode: LaunchMode.inAppWebView,
                              );
                            },
                        ),
                        const TextSpan(
                          text: ' and ',
                        ),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: plusJakartaSansSemiBold10.copyWith(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString(
                                  'https://www.informed.so/legal/privacy-policy',
                                  mode: LaunchMode.inAppWebView,
                                );
                              }),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
