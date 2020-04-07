import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'history_data_controller.dart';

class HistoryDataPage extends StatefulWidget {
  final String title;
  const HistoryDataPage({Key key, this.title = "HistoryData"})
      : super(key: key);

  @override
  _HistoryDataPageState createState() => _HistoryDataPageState();
}

class _HistoryDataPageState
    extends ModularState<HistoryDataPage, HistoryDataController> {
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
