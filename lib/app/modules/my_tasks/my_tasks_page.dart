import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'my_tasks_controller.dart';

class MyTasksPage extends StatefulWidget {
  final String title;
  const MyTasksPage({Key key, this.title = "MyTasks"}) : super(key: key);

  @override
  _MyTasksPageState createState() => _MyTasksPageState();
}

class _MyTasksPageState extends ModularState<MyTasksPage, MyTasksController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
