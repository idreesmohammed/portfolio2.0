import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_class.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          for (int i = 0; i < HelperClass.headerList.length; i++)
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              title: Text(HelperClass.headerList[i]),
              leading: Icon(HelperClass.drawerIcons[i]),
            )
        ],
      ),
    );
  }
}
