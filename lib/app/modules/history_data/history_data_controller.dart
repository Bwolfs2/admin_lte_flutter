import 'package:mobx/mobx.dart';

part 'history_data_controller.g.dart';

class HistoryDataController = _HistoryDataControllerBase
    with _$HistoryDataController;

abstract class _HistoryDataControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
