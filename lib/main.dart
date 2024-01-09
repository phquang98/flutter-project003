import 'package:flutter/material.dart';

import 'package:flutter_project003/example_datanavigate_01.dart';
import 'package:flutter_project003/example_datanavigate_02.dart';
import 'package:flutter_project003/example_drawer.dart';
import 'package:flutter_project003/example_navigate.dart';
import 'package:flutter_project003/example_tab.dart';

void main() {
  runApp(
    const Index(
      showOption: 'Option Five',
    ),
  );
}

class Index extends StatelessWidget {
  const Index({super.key, required this.showOption});

  final String showOption;

  @override
  Widget build(BuildContext context) {
    switch (showOption) {
      case 'Option One':
        return const MaterialApp(
          title: 'Option One: Changing between tabs',
          debugShowCheckedModeBanner: true,
          // home: FirstRoute()
          home: TabBarDemo(),
        );

      case 'Option Two':
        return const MaterialApp(
          title: 'Option Two: Navigate between screens',
          debugShowCheckedModeBanner: true,
          // home: FirstRoute()
          home: FirstRoute(),
        );

      case 'Option Three':
        final todoCltExample = List.generate(
          5,
          (index) => Todo(
            'TodoItem number $index',
            'A description of what needs to be done for TodoItem $index',
          ),
        );

        return MaterialApp(
          title: 'Option Three: Send data from parent -> children',
          debugShowCheckedModeBanner: true,
          home: TodoCltScreen(todoClt: todoCltExample),
        );

      case 'Option Four':
        return const MaterialApp(
          title: 'Option Four: Send data from children -> parent',
          debugShowCheckedModeBanner: true,
          home: HomeScreen(),
        );

      case 'Option Five':
        return const MaterialApp(
          title: 'Option Five: How to create a basic drawer',
          debugShowCheckedModeBanner: true,
          home: DrawerExample(
            title: 'Test',
          ),
        );

      default:
        return const MaterialApp(
          debugShowCheckedModeBanner: true,
          // home: FirstRoute()
          home: TabBarDemo(),
        );
    }
  }
}
