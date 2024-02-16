import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routs.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Imageurl =
        "https://www.balajitanjoreartgallery.com/images/01-12-202161a76664637429157.jpg";
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(color: Colors.lightGreen),
            accountName: Text("Jay Hanuman"),
            accountEmail: Text("mtechViral123@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(Imageurl),
            ),
          ),
        ),
        ListTile(
          onTap: () async =>
              await Navigator.pushNamed(context, MyRouts.loginRoute),
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.black,
          ),
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.black,
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.black,
          ),
          title: Text(
            "Mail",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    ));
  }
}
