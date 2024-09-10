import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final ValueNotifier<bool> isEnabledNotifier;
  final VoidCallback onPressed;
  final String buttonText;

  const LoginButton({
    required this.isEnabledNotifier,
    required this.onPressed,
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ValueListenableBuilder<bool>(
        valueListenable: isEnabledNotifier,
        builder: (context, isEnabled, child) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: isEnabled ? onPressed : null,
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
