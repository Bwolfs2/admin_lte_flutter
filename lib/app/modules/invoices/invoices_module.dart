import 'package:admin_lte_flutter/app/modules/invoices/invoices_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/invoices/invoices_page.dart';

class InvoicesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InvoicesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => InvoicesPage()),
      ];

  static Inject get to => Inject<InvoicesModule>.of();
}
