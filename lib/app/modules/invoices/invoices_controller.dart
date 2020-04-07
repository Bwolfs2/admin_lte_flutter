import 'package:mobx/mobx.dart';

part 'invoices_controller.g.dart';

class InvoicesController = _InvoicesControllerBase with _$InvoicesController;

abstract class _InvoicesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
