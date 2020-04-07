import 'package:mobx/mobx.dart';

part 'card_chart_pie_chart_controller.g.dart';

class CardChartPieChartController = _CardChartPieChartControllerBase
    with _$CardChartPieChartController;

abstract class _CardChartPieChartControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
