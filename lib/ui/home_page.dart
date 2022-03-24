import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remote_todo/route/app_route.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        TodoListRoute(),
        ArchiveListRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.all_inbox), label: "TODOリスト"),
            BottomNavigationBarItem(icon: Icon(Icons.archive), label: "ARCHIVE")
          ],
        );
      },
    );
  }
}
