import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Color.fromARGB(255, 160, 171, 229),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child:UserAccountsDrawerHeader(margin: EdgeInsets.zero,
            accountName: Text("Alexis"),
            accountEmail: Text("hendramyuv@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage(('prabhat.jpg'),),)
            ),
            ),
            ListTile(leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,

            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color:Colors.white,
              ),
            ),
              ),
                ListTile(leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,

            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color:Colors.white,
              ),
            ),
              ),
               ListTile(leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,

            ),
            title: Text(
              "Mail me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color:Colors.white,
              ),
            ),
              ),
                  ListTile(leading: Icon(
              CupertinoIcons.camera,
              color: Colors.white,

            ),
            title: Text(
              "Share with us ",
              textScaleFactor: 1.2,
              style: TextStyle(
                color:Colors.white,
              ),
            ),
              ),
                   ListTile(leading: Icon(
              CupertinoIcons.house_fill,
              color: Colors.white,

            ),
            title: Text(
              "Marketplace",
              textScaleFactor: 1.2,
              style: TextStyle(
                color:Colors.white,
              ),
            ),
              )
        ],
      ),
      ),
    );
  }
}