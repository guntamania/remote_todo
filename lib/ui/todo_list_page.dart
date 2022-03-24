import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_todo/data/model/todo_items.dart';
import 'package:remote_todo/route/app_route.gr.dart';

import 'widget/todo_item_widget.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            await AutoRouter.of(context).push(AddItemDialogRoute());
          }),
      body: ref.watch(todoItemsFutureProvider).when(
        data: (data) {
          return ListView.builder(
            itemBuilder: (_, index) {
              return TodoItemWidget(
                title: data[index].title,
                description: data[index].body,
              );
            },
            itemCount: data.length,
          );
        },
        error: (_, __) {
          return const Text("Error");
        },
        loading: () {
          return const Text("Loading");
        },
      ),
    );
  }
}
