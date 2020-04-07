import 'package:flutter/material.dart';

import 'widgets/drawer/drawer_widget.dart';

class RootPage extends StatefulWidget {
  final Widget child;

  const RootPage({Key key, this.child}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Opacity(
            child: Image.network(
              "https://www.w3schools.com/howto/img_snow.jpg",
              fit: BoxFit.fill,
            ),
            opacity: .4,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.red.withOpacity(.1),
          body: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(8, 0),
                      blurRadius: 8,
                    ),
                  ],
                  border: Border(
                    right: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.black12.withOpacity(.1),
                    ),
                  ),
                  color: Colors.transparent,
                  gradient: LinearGradient(colors: [
                    Colors.yellow[100].withOpacity(.5),
                    Colors.yellow[100].withOpacity(.1)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                width: 300,
                child: DrawerWidget(),
              ),
              Expanded(child: widget.child),
            ],
          ),
        ),
      ],
    );
  }
}
