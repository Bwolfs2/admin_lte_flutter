import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'my_projects_controller.dart';

class MyProjectsPage extends StatefulWidget {
  final String title;
  const MyProjectsPage({Key key, this.title = "MyProjects"}) : super(key: key);

  @override
  _MyProjectsPageState createState() => _MyProjectsPageState();
}

class _MyProjectsPageState
    extends ModularState<MyProjectsPage, MyProjectsController> {
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
