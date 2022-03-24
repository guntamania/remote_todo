
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';
part 'todo_item.g.dart';

@freezed
abstract class TodoItem with _$TodoItem {
  factory TodoItem({
    int? id,
    required String title,
    required String body,
    required DateTime deadline
  }) = _TodoItem;

  factory TodoItem.fromJson(dynamic json) => _$TodoItemFromJson(json);
}