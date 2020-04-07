import 'package:admin_lte_flutter/app/modules/history_data/history_data_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:admin_lte_flutter/app/modules/history_data/history_data_page.dart';

class HistoryDataModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HistoryDataController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HistoryDataPage()),
      ];

  static Inject get to => Inject<HistoryDataModule>.of();
}
