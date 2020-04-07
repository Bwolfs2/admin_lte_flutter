import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:admin_lte_flutter/app/modules/my_wallets/my_wallets_controller.dart';
import 'package:admin_lte_flutter/app/modules/my_wallets/my_wallets_module.dart';

void main() {
  initModule(MyWalletsModule());
  // MyWalletsController mywallets;
  //
  setUp(() {
    //     mywallets = MyWalletsModule.to.get<MyWalletsController>();
  });

  group('MyWalletsController Test', () {
    //   test("First Test", () {
    //     expect(mywallets, isInstanceOf<MyWalletsController>());
    //   });

    //   test("Set Value", () {
    //     expect(mywallets.value, equals(0));
    //     mywallets.increment();
    //     expect(mywallets.value, equals(1));
    //   });
  });
}
