import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

// The first screen listing the todo collection
class TodoCltScreen extends StatelessWidget {
  const TodoCltScreen({super.key, required this.todoClt});

  final List<Todo> todoClt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Todo Clt')),
        body: ListView.builder(
          itemCount: todoClt.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todoClt[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TodoItemScreen(todoItem: todoClt[index])));
              },
            );
          },
        ));
  }
}

// The second individual screen for each todo item
class TodoItemScreen extends StatelessWidget {
  const TodoItemScreen({super.key, required this.todoItem});

  final Todo todoItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todoItem.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(todoItem.description),
        ));
  }
}
