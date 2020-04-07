import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'my_wallets_controller.dart';

class MyWalletsPage extends StatefulWidget {
  final String title;
  const MyWalletsPage({Key key, this.title = "MyWallets"}) : super(key: key);

  @override
  _MyWalletsPageState createState() => _MyWalletsPageState();
}

class _MyWalletsPageState
    extends ModularState<MyWalletsPage, MyWalletsController> {
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
