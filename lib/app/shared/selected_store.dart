import 'package:mobx/mobx.dart';

part 'selected_store.g.dart';

class SelectedStore = _SelectedStoreBase with _$SelectedStore;

abstract class _SelectedStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void changeIndex(int index) {
    selectedIndex = index;
  }
}
