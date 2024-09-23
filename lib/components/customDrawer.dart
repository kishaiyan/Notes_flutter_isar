import 'package:flutter/material.dart';

import '../pages/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
            child: Icon(
          Icons.verified_user,
          size: 50,
        )),
        ListTile(
          leading: Icon(Icons.home_max_outlined),
          title: Text('HOME'),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('SETTINGS'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
      ]),
    );
  }
}
