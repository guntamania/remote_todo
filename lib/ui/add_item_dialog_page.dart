import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/model/entity/todo_item.dart';
import '../data/model/todo_items.dart';

class AddItemDialogPage extends HookConsumerWidget {
  const AddItemDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _titleEditingController = useTextEditingController();
    final _descEditingController = useTextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("アイテムの追加"),
        ),
        body: Column(
          children: [
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "タイトル",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                controller: _titleEditingController,
              ),
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "説明",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                controller: _descEditingController,
              ),
              padding: const EdgeInsets.all(20),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(addItemsFutureProvider)(
                    newItem: TodoItem(
                        title: _titleEditingController.text,
                        body: _descEditingController.text,
                        deadline: DateTime.now()));
                ref.refresh(todoItemsFutureProvider);
                Navigator.pop(context);
              },
              child: const Text("追加する"),
            ),
          ],
        ));
  }
}
