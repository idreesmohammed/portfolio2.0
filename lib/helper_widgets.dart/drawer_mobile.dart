import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_class.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.onHeaderItemTap});
  final Function(int) onHeaderItemTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Drawer(
        backgroundColor: const Color(0xff051830),
        child: ListView(
          children: [
            for (int i = 0; i < HelperClass.headerList.length; i++)
              ListTile(
                onTap: () {
                  onHeaderItemTap(i);
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                title: Text(
                  HelperClass.headerList[i],
                  style: const TextStyle(color: Colors.white),
                ),
                leading: Icon(HelperClass.drawerIcons[i],
                    color: Colors.yellowAccent, size: 20),
              )
          ],
        ),
      ),
    );
  }
}
