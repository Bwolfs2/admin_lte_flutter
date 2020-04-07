import 'package:admin_lte_flutter/app/modules/help/help_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/help/help_page.dart';

class HelpModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HelpController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HelpPage()),
      ];

  static Inject get to => Inject<HelpModule>.of();
}
