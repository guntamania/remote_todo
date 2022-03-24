import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_todo/data/api/todo_api.dart';
import 'package:remote_todo/data/http_client.dart';
import 'package:remote_todo/data/model/entity/todo_item.dart';
import 'package:remote_todo/data/repository/todo_repository.dart';

final todoRepositoryProvider = Provider((ref) => TodoRepositoryImpl(ref.read));

class TodoRepositoryImpl extends TodoRepository {
  TodoRepositoryImpl(this._reader);

  final Reader _reader;
  late final _todoApi = _reader(todoApiProvider);

  @override
  Future<List<TodoItem>> getArchivedItems() {
    // TODO: implement getArchivedItems
    throw UnimplementedError();
  }

  @override
  Future<List<TodoItem>> getTodoItems() {
    return _todoApi.getTodoItems();
  }

  @override
  Future<void> postTodoItem(TodoItem item) {
    return _todoApi.postTodoItem(item);
  }
}
