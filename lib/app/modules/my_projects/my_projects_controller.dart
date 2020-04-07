import 'package:mobx/mobx.dart';

part 'my_projects_controller.g.dart';

class MyProjectsController = _MyProjectsControllerBase
    with _$MyProjectsController;

abstract class _MyProjectsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
