import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/dashboard/dashboard_module.dart';
import 'modules/help/help_module.dart';
import 'modules/history_data/history_data_module.dart';
import 'modules/invoices/invoices_module.dart';
import 'modules/my_projects/my_projects_module.dart';
import 'modules/my_tasks/my_tasks_module.dart';
import 'modules/my_wallets/my_wallets_module.dart';
import 'modules/root/widgets/drawer/drawer_widget_controller.dart';
import 'shared/selected_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => SelectedStore()),
        Bind((i) => DrawerWidgetController(i.get())),
      ];

  @override
  List<Router> get routers => [
        Router("/dashboard", module: DashboardModule()),
        Router("/myProjects", module: MyProjectsModule()),
        Router("/myWallets", module: MyWalletsModule()),
        Router("/historyData", module: HistoryDataModule()),
        Router("/invoices", module: InvoicesModule()),
        Router("/help", module: HelpModule()),
        Router("/myTasks", module: MyTasksModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
