import 'package:mobx/mobx.dart';

part 'my_wallets_controller.g.dart';

class MyWalletsController = _MyWalletsControllerBase with _$MyWalletsController;

abstract class _MyWalletsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
