import 'package:flutter/material.dart';

class TodoItemWidget extends StatelessWidget {
  TodoItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
          constraints: const BoxConstraints(
              minHeight: 44,
              minWidth: 34,
              maxHeight: 64,
              maxWidth: 54),
          child: const Icon(Icons.check_box_outline_blank_sharp) ),
      title: Text(title),
      subtitle: Text(description),
    );
  }

}