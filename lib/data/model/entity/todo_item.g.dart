// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoItem _$$_TodoItemFromJson(Map<String, dynamic> json) => _$_TodoItem(
      id: json['id'] as int?,
      title: json['title'] as String,
      body: json['body'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$_TodoItemToJson(_$_TodoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'deadline': instance.deadline.toIso8601String(),
    };
