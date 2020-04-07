import 'package:admin_lte_flutter/app/modules/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Colors.orange[600],
        accentColor: Colors.yellow,
      ),
      initialRoute: '/dashboard',
      builder: (context, child) {
        print("Teste: $child");
        return RootPage(
          child: child,
        );
      },
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
