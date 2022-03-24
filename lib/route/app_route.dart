
import 'package:auto_route/auto_route.dart';
import 'package:remote_todo/ui/archive_list_page.dart';
import 'package:remote_todo/ui/home_page.dart';
import 'package:remote_todo/ui/todo_list_page.dart';

import '../ui/add_item_dialog_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomePage,
      initial: true,
      path: "/",
      children: <AutoRoute>[
        AutoRoute(
          page: TodoListPage,
          path: "page_list",
        ),
        AutoRoute(
          page: ArchiveListPage,
          path: "archive_list"
        )
      ],
    ),
    AutoRoute(
        page: AddItemDialogPage,
        path: "add_item_dialog",
        fullscreenDialog: true
    ),
  ]
)
class $AppRoute {}