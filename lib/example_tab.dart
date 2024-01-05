import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike))
                ]),
                title: const Text('Tabs Demo'),
              ),
              body: TabBarView(children: [
                const Icon(Icons.directions_car),
                const Icon(Icons.directions_transit),
                Container(
                    alignment: Alignment.center,
                    child: const Text('This should be a context for tab 3')),
              ]),
            )));
  }
}
