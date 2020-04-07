import 'package:admin_lte_flutter/app/modules/my_tasks/my_tasks_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/my_tasks/my_tasks_page.dart';

class MyTasksModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyTasksController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MyTasksPage()),
      ];

  static Inject get to => Inject<MyTasksModule>.of();
}
