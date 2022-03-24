import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remote_todo/route/app_route.gr.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
   MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRoute();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp.router(
      theme: ThemeData.light(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate()
    );
  }
}
