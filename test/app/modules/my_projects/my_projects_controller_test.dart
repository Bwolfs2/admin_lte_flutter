import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:admin_lte_flutter/app/modules/my_projects/my_projects_controller.dart';
import 'package:admin_lte_flutter/app/modules/my_projects/my_projects_module.dart';

void main() {
  initModule(MyProjectsModule());
  // MyProjectsController myprojects;
  //
  setUp(() {
    //     myprojects = MyProjectsModule.to.get<MyProjectsController>();
  });

  group('MyProjectsController Test', () {
    //   test("First Test", () {
    //     expect(myprojects, isInstanceOf<MyProjectsController>());
    //   });

    //   test("Set Value", () {
    //     expect(myprojects.value, equals(0));
    //     myprojects.increment();
    //     expect(myprojects.value, equals(1));
    //   });
  });
}
