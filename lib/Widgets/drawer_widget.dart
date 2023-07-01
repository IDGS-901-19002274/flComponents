import 'package:fl_components/routes/routes.dart';
import 'package:fl_components/theme/global_theme.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            margin: EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
                color: secondary,
                image: DecorationImage(
                  image: AssetImage('assets/coca.png'),
                  fit: BoxFit.contain,
                )),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('Version": 1.0.1'),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(menuOptions[index].name),
                leading: Icon(
                  menuOptions[index].icon,
                  color: principal,
                ),
                onTap: () =>
                    Navigator.pushNamed(context, menuOptions[index].router),
              );
            },
            separatorBuilder: (__, _) => const Divider(),
            itemCount: menuOptions.length,
          )
        ],
      ),
    );
  }
}
