import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'help_controller.dart';

class HelpPage extends StatefulWidget {
  final String title;
  const HelpPage({Key key, this.title = "Help"}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends ModularState<HelpPage, HelpController> {
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
