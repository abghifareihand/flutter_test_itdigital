import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';

class TodoButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double borderRadius;

  const TodoButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColor.todoPink,
    this.textColor = Colors.white,
    this.height = 48.0,
    this.borderRadius = 50.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: AppFont.whiteText.copyWith(
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
