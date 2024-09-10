import 'package:flutter/material.dart';

class LoginCheckbox extends StatelessWidget {
  final ValueNotifier<bool> isCheckedNotifier;
  final String label;
  final Color checkColor;
  final Color activeColor;
  final Color borderColor;

  const LoginCheckbox({
    required this.isCheckedNotifier,
    required this.label,
    this.checkColor = Colors.white,
    this.activeColor = Colors.pinkAccent,
    this.borderColor = Colors.pinkAccent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          ValueListenableBuilder<bool>(
            valueListenable: isCheckedNotifier,
            builder: (context, isChecked, child) {
              return SizedBox(
                height: 20,
                width: 20,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    isCheckedNotifier.value = value ?? false;
                  },
                  checkColor: checkColor,
                  activeColor: activeColor,
                  side: BorderSide(color: borderColor),
                ),
              );
            },
          ),
          const SizedBox(width: 8.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
