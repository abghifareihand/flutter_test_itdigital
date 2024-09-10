import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';

import '../../../core/app_font.dart';

class TodoCheckbox extends StatelessWidget {
  final ValueNotifier<bool> isCheckedNotifier;
  final String label;

  const TodoCheckbox({
    required this.isCheckedNotifier,
    required this.label,
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
              return Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: AppColor.todoWhite,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppColor.todoPink,
                  ),
                ),
                child: Transform.scale(
                  scale: 0.75,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      isCheckedNotifier.value = value ?? false;
                    },
                    checkColor: AppColor.todoPink,
                    activeColor: Colors.transparent,
                    side: BorderSide.none,
                  ),
                ),
              );
            },
          ),
          const SizedBox(width: 8.0),
          ValueListenableBuilder<bool>(
            valueListenable: isCheckedNotifier,
            builder: (context, isChecked, child) {
              return Text(
                label,
                style: AppFont.blackText.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
