// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoItem _$TodoItemFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
class _$TodoItemTearOff {
  const _$TodoItemTearOff();

  _TodoItem call(
      {int? id,
      required String title,
      required String body,
      required DateTime deadline}) {
    return _TodoItem(
      id: id,
      title: title,
      body: body,
      deadline: deadline,
    );
  }

  TodoItem fromJson(Map<String, Object?> json) {
    return TodoItem.fromJson(json);
  }
}

/// @nodoc
const $TodoItem = _$TodoItemTearOff();

/// @nodoc
mixin _$TodoItem {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res>;
  $Res call({int? id, String title, String body, DateTime deadline});
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res> implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  final TodoItem _value;
  // ignore: unused_field
  final $Res Function(TodoItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$TodoItemCopyWith(_TodoItem value, $Res Function(_TodoItem) then) =
      __$TodoItemCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title, String body, DateTime deadline});
}

/// @nodoc
class __$TodoItemCopyWithImpl<$Res> extends _$TodoItemCopyWithImpl<$Res>
    implements _$TodoItemCopyWith<$Res> {
  __$TodoItemCopyWithImpl(_TodoItem _value, $Res Function(_TodoItem) _then)
      : super(_value, (v) => _then(v as _TodoItem));

  @override
  _TodoItem get _value => super._value as _TodoItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_TodoItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItem implements _TodoItem {
  _$_TodoItem(
      {this.id,
      required this.title,
      required this.body,
      required this.deadline});

  factory _$_TodoItem.fromJson(Map<String, dynamic> json) =>
      _$$_TodoItemFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String body;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'TodoItem(id: $id, title: $title, body: $body, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, deadline);

  @JsonKey(ignore: true)
  @override
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      __$TodoItemCopyWithImpl<_TodoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoItemToJson(this);
  }
}

abstract class _TodoItem implements TodoItem {
  factory _TodoItem(
      {int? id,
      required String title,
      required String body,
      required DateTime deadline}) = _$_TodoItem;

  factory _TodoItem.fromJson(Map<String, dynamic> json) = _$_TodoItem.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get body;
  @override
  DateTime get deadline;
  @override
  @JsonKey(ignore: true)
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
