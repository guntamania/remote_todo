// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/add_item_dialog_page.dart' as _i2;
import '../ui/archive_list_page.dart' as _i4;
import '../ui/home_page.dart' as _i1;
import '../ui/todo_list_page.dart' as _i3;

class AppRoute extends _i5.RootStackRouter {
  AppRoute([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    AddItemDialogRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i2.AddItemDialogPage(),
          fullscreenDialog: true);
    },
    TodoListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TodoListPage());
    },
    ArchiveListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ArchiveListPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/', children: [
          _i5.RouteConfig(TodoListRoute.name,
              path: 'page_list', parent: HomeRoute.name),
          _i5.RouteConfig(ArchiveListRoute.name,
              path: 'archive_list', parent: HomeRoute.name)
        ]),
        _i5.RouteConfig(AddItemDialogRoute.name, path: 'add_item_dialog')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AddItemDialogPage]
class AddItemDialogRoute extends _i5.PageRouteInfo<void> {
  const AddItemDialogRoute()
      : super(AddItemDialogRoute.name, path: 'add_item_dialog');

  static const String name = 'AddItemDialogRoute';
}

/// generated route for
/// [_i3.TodoListPage]
class TodoListRoute extends _i5.PageRouteInfo<void> {
  const TodoListRoute() : super(TodoListRoute.name, path: 'page_list');

  static const String name = 'TodoListRoute';
}

/// generated route for
/// [_i4.ArchiveListPage]
class ArchiveListRoute extends _i5.PageRouteInfo<void> {
  const ArchiveListRoute() : super(ArchiveListRoute.name, path: 'archive_list');

  static const String name = 'ArchiveListRoute';
}
