import 'package:flutter/material.dart';

import '../model/task.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tasks = <Task>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (_, index) {
          return _toWidget(_tasks[index]);
        },
        separatorBuilder: (_, __) => Divider(),
        itemCount: _tasks.length,
      ),
      appBar: AppBar(title: Text('Todo')),
    );
  }

  Widget _toWidget(Task t) {
    return Container();
  }
}
