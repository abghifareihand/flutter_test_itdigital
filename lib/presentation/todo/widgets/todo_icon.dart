// icon_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';
import '../../../core/app_color.dart';
import '../cubit/page_cubit.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;
  final Color activeColor;
  final Color inactiveColor;

  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = context.watch<PageCubit>().state == index;

    return GestureDetector(
      onTap: () => context.read<PageCubit>().setPage(index),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isActive ? activeColor : inactiveColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Icon(
              icon,
              size: 32,
              color: isActive ? AppColor.todoWhite : AppColor.todoPink,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            title,
            style: AppFont.blackText.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
