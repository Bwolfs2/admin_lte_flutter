import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:admin_lte_flutter/app/modules/my_tasks/my_tasks_controller.dart';
import 'package:admin_lte_flutter/app/modules/my_tasks/my_tasks_module.dart';

void main() {
  initModule(MyTasksModule());
  // MyTasksController mytasks;
  //
  setUp(() {
    //     mytasks = MyTasksModule.to.get<MyTasksController>();
  });

  group('MyTasksController Test', () {
    //   test("First Test", () {
    //     expect(mytasks, isInstanceOf<MyTasksController>());
    //   });

    //   test("Set Value", () {
    //     expect(mytasks.value, equals(0));
    //     mytasks.increment();
    //     expect(mytasks.value, equals(1));
    //   });
  });
}
