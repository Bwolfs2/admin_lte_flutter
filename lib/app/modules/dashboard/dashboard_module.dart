import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_controller.dart';
import 'dashboard_page.dart';
import 'widgets/card_chart_pie_chart/card_chart_pie_chart_controller.dart';

class DashboardModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardChartPieChartController()),
        Bind((i) => DashboardController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DashboardPage()),
      ];

  static Inject get to => Inject<DashboardModule>.of();
}
