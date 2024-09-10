import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';
import 'package:flutter_test_itdigital/presentation/todo/widgets/todo_button.dart';
import 'package:flutter_test_itdigital/presentation/todo/widgets/todo_checkbox.dart';

class ListTodo extends StatefulWidget {
  const ListTodo({super.key});

  @override
  State<ListTodo> createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  final _isToday1 = ValueNotifier<bool>(true);
  final _isToday2 = ValueNotifier<bool>(true);
  final _isToday3 = ValueNotifier<bool>(true);

  final _isTomorrow1 = ValueNotifier<bool>(true);
  final _isTomorrow2 = ValueNotifier<bool>(true);
  final _isTomorrow3 = ValueNotifier<bool>(true);

  final _isWeek1 = ValueNotifier<bool>(true);
  final _isWeek2 = ValueNotifier<bool>(true);
  final _isWeek3 = ValueNotifier<bool>(true);
  final _isWeek4 = ValueNotifier<bool>(true);

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
                    'To - Do',
                    style: AppFont.blackText.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                  /// Today
                  Text(
                    'Today',
                    style: AppFont.blackText.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isToday1,
                    label: 'Start a to do list',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isToday2,
                    label: 'Start a draft marketing campaign',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isToday3,
                    label: 'Follow up questions',
                  ),

                  const SizedBox(
                    height: 16.0,
                  ),

                  /// Tomorrow
                  Text(
                    'Tomorrow',
                    style: AppFont.blackText.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isTomorrow1,
                    label: 'Call a Insurance broker',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isTomorrow2,
                    label: 'Send in credit application',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isTomorrow3,
                    label: 'Go through old mail',
                  ),

                  const SizedBox(
                    height: 16.0,
                  ),

                  /// This Week
                  Text(
                    'This Week',
                    style: AppFont.blackText.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isWeek1,
                    label: 'Email expense report',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isWeek2,
                    label: 'Clean out car before road trip',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isWeek3,
                    label: 'Pick up form',
                  ),
                  TodoCheckbox(
                    isCheckedNotifier: _isWeek4,
                    label: 'Send deposit to clean',
                  ),
                ],
              ),
            ),
          ),
        ),

        // Button
        TodoButton(
          label: 'Create a to-do list',
          onPressed: () {},
        ),
      ],
    );
  }
}
