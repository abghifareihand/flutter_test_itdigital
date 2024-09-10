import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';

import '../widgets/todo_button.dart';

class ListIdea extends StatelessWidget {
  const ListIdea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Content
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.todoGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Idea',
                    style: AppFont.blackText.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
          ),
        ),

        // Button
        TodoButton(
          label: 'Create a idea list',
          onPressed: () {},
        ),
      ],
    );
  }
}
