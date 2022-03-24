
import '../model/entity/todo_item.dart';

abstract class TodoRepository {
  Future<List<TodoItem>> getTodoItems();

  Future<void> postTodoItem(TodoItem item);

  Future<List<TodoItem>> getArchivedItems();
}