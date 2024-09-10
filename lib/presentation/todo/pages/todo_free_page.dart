import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';
import 'package:flutter_test_itdigital/presentation/todo/widgets/todo_button.dart';

import 'todo_page.dart';

class TodoFreePage extends StatelessWidget {
  const TodoFreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            // Icon close
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.todoPink,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/gift.png',
                      height: 120,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Try Premium for free',
                      style: AppFont.blackText.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const TextTile(
                      title: 'Sync across all your device',
                    ),
                    const TextTile(
                      title: 'Get 12 GB of uploads per months',
                    ),
                    const TextTile(
                      title: 'Access your notebooks offline',
                    ),
                    const TextTile(
                      title: 'Try it free for 7 days and cancel at any time',
                    ),
                  ],
                ),
              ),
            ),

            TodoButton(
              label: 'New note',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String title;
  const TextTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          color: AppColor.todoPink,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Text(
            title,
            style: AppFont.blackText.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
        ),
      ],
    );
  }
}
