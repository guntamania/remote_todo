import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_todo/data/http_client.dart';
import 'package:remote_todo/data/model/entity/todo_item.dart';
import 'package:retrofit/http.dart';

part 'todo_api.g.dart';

final todoApiProvider = Provider((ref) => TodoApi(ref.read));

@RestApi()
abstract class TodoApi {
  factory TodoApi(Reader reader) => _TodoApi(reader(httpClientProvider));

  @GET("items")
  Future<List<TodoItem>> getTodoItems();

  @POST("items")
  Future<List<TodoItem>> postTodoItem(@Body() TodoItem item);
}
