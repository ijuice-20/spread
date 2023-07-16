import 'package:flutter/material.dart';
import 'package:spread/app/application/values/text_style.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 51,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFEEEEEE),
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFFEEEEEE),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 24,
                width: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Text(
                  title,
                  style: plusJakartaSansMedium14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
