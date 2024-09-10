import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure you have this dependency in your pubspec.yaml

class LoginSocialLogo extends StatelessWidget {
  const LoginSocialLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialLogo(
          assetPath: 'assets/icons/ic_google.svg',
          color: Colors.pinkAccent,
          borderColor: Colors.pinkAccent,
        ),
        SizedBox(width: 16.0),
        SocialLogo(
          assetPath: 'assets/icons/ic_facebook.svg',
          color: Colors.blue,
          borderColor: Colors.blue,
        ),
        SizedBox(width: 16.0),
        SocialLogo(
          assetPath: 'assets/icons/ic_linkedin.svg',
          color: Colors.blueAccent,
          borderColor: Colors.blueAccent,
        ),
      ],
    );
  }
}

class SocialLogo extends StatelessWidget {
  final String assetPath;
  final Color color;
  final Color borderColor;

  const SocialLogo({
    required this.assetPath,
    required this.color,
    required this.borderColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: SvgPicture.asset(
        assetPath,
        width: 20,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
