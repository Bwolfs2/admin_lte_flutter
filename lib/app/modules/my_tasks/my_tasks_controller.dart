import 'package:mobx/mobx.dart';

part 'my_tasks_controller.g.dart';

class MyTasksController = _MyTasksControllerBase with _$MyTasksController;

abstract class _MyTasksControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
