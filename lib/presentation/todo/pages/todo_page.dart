import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_itdigital/core/app_color.dart';
import 'package:flutter_test_itdigital/core/app_font.dart';
import 'package:flutter_test_itdigital/presentation/todo/pages/list_idea.dart';
import 'package:flutter_test_itdigital/presentation/todo/pages/list_meeting.dart';
import 'package:flutter_test_itdigital/presentation/todo/pages/list_todo.dart';
import '../cubit/page_cubit.dart';
import '../widgets/todo_icon.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 40.0),
            Text(
              'Try one of these to start',
              style: AppFont.blackText.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),

            // Button
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                    icon: Icons.book,
                    title: 'To-Do',
                    index: 0,
                    activeColor: AppColor.todoPink,
                    inactiveColor: AppColor.todoGrey,
                  ),
                  IconButtonWidget(
                    icon: Icons.person,
                    title: 'Meeting',
                    index: 1,
                    activeColor: AppColor.todoPink,
                    inactiveColor: AppColor.todoGrey,
                  ),
                  IconButtonWidget(
                    icon: Icons.local_fire_department_rounded,
                    title: 'Idea',
                    index: 2,
                    activeColor: AppColor.todoPink,
                    inactiveColor: AppColor.todoGrey,
                  ),
                  IconButtonWidget(
                    icon: Icons.card_travel_sharp,
                    title: 'Blank',
                    index: 3,
                    activeColor: AppColor.todoPink,
                    inactiveColor: AppColor.todoGrey,
                  ),
                ],
              ),
            ),

            // Page Content
            Expanded(
              child: BlocBuilder<PageCubit, int>(
                builder: (context, state) {
                  if (state == 0) {
                    return const ListTodo();
                  } else if (state == 1) {
                    return const ListMeeting();
                  } else if (state == 2) {
                    return const ListIdea();
                  } else if (state == 3) {
                    return const Center(child: Text('Blank'));
                  } else {
                    return const Center(child: Text('Invalid Page'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
