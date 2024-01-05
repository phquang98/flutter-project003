import 'package:flutter/material.dart';

import 'package:flutter_project003/example_navigate.dart';
import 'package:flutter_project003/example_tab.dart';

void main() {
  runApp(const Index());
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true,
        // home: FirstRoute()
        home: TabBarDemo());
  }
}
