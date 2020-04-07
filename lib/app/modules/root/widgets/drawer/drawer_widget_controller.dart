import 'package:mobx/mobx.dart';

import '../../../../shared/selected_store.dart';

part 'drawer_widget_controller.g.dart';

class DrawerWidgetController = _DrawerWidgetControllerBase
    with _$DrawerWidgetController;

abstract class _DrawerWidgetControllerBase with Store {
  final SelectedStore selectedStore;

  _DrawerWidgetControllerBase(this.selectedStore);
}
