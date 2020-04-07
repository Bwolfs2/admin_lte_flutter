import 'package:admin_lte_flutter/app/modules/my_wallets/my_wallets_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/my_wallets/my_wallets_page.dart';

class MyWalletsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyWalletsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MyWalletsPage()),
      ];

  static Inject get to => Inject<MyWalletsModule>.of();
}
