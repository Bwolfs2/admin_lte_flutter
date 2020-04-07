import 'package:admin_lte_flutter/app/shared/selected_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'drawer_widget_controller.dart';

class DrawerWidget extends StatelessWidget {
  final controller = Modular.get<DrawerWidgetController>();
  @override
  Widget build(BuildContext context) {
    var items = getMenuItems;
    return Column(
      children: <Widget>[
        Container(
          height: 140,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.android,
                color: Colors.black54,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Observer(builder: (_) {
            var selectedIndex = controller.selectedStore.selectedIndex;
            return ListView.separated(
              itemCount: items.length,
              itemBuilder: (context, index) => Row(
                children: <Widget>[
                  Container(
                    width: 5,
                    height: 50,
                    color: selectedIndex == index
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        items[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Container(
                        width: 60,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 100,
                            ),
                            Icon(items[index].icon),
                          ],
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      selected: selectedIndex == index,
                      onTap: () {
                        // Navigator.pushNamed(context, "/myTasks");
                        //    Modular.to.pushNamed("/myTasks");
                        controller.selectedStore.changeIndex(index);
                        Modular.to
                            .pushReplacementNamed("/${items[index].module}");
                        //Modular.to.pushNamed("/myProjects");
                      },
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
            );
          }),
        )
      ],
    );
  }

  List<MenuItem> get getMenuItems => [
        MenuItem(
          title: "Dashboard",
          icon: Icons.dashboard,
          module: "dashboard",
        ),
        MenuItem(
          title: "My tasks",
          icon: Icons.info,
          module: "myTasks",
        ),
        MenuItem(
          title: "My Projects",
          icon: Icons.pages,
          module: "myProjects",
        ),
        MenuItem(
          title: "My Wallets",
          icon: Icons.wallpaper,
          module: "myWallets",
        ),
        MenuItem(
          title: "History Data",
          icon: Icons.history,
          module: "historyData",
        ),
        MenuItem(
          title: "Invoices",
          icon: Icons.settings_input_svideo,
          module: "invoices",
        ),
        MenuItem(
          title: "Help",
          icon: Icons.help,
          module: "help",
        ),
      ];
}

class MenuItem {
  final String title;
  final IconData icon;
  final String module;

  MenuItem({
    this.title,
    this.icon,
    this.module,
  });
}
