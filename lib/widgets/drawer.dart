import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 231, 106, 9)),
                accountName: Text("Mahin"),
                accountEmail: Text("mahin@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
