import 'package:admin_lte_flutter/app/modules/my_projects/my_projects_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/my_projects/my_projects_page.dart';

class MyProjectsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyProjectsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MyProjectsPage()),
      ];

  static Inject get to => Inject<MyProjectsModule>.of();
}
