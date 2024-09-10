import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  final String text;

  const LoginDivider({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
