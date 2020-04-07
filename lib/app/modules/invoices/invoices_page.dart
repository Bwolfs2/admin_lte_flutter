import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'invoices_controller.dart';

class InvoicesPage extends StatefulWidget {
  final String title;
  const InvoicesPage({Key key, this.title = "Invoices"}) : super(key: key);

  @override
  _InvoicesPageState createState() => _InvoicesPageState();
}

class _InvoicesPageState
    extends ModularState<InvoicesPage, InvoicesController> {
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
