import 'package:mobx/mobx.dart';

part 'help_controller.g.dart';

class HelpController = _HelpControllerBase with _$HelpController;

abstract class _HelpControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
