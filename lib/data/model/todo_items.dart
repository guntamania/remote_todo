import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_todo/data/model/entity/todo_item.dart';
import 'package:remote_todo/data/repository/todo_repository_impl.dart';

final todoItemsFutureProvider = FutureProvider((ref) async {
  return await ref.watch(todoRepositoryProvider).getTodoItems();
});

final addItemsFutureProvider = Provider((ref) {
  return({required TodoItem newItem}) async {
    return await ref.read(todoRepositoryProvider).postTodoItem(newItem);
  };
});