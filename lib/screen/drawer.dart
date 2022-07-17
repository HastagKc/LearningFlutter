import 'package:flutter/material.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key? key}) : super(key: key);
  final img =
      "https://imgs.search.brave.com/YDH7zPAcaSChGy9UlkbgjCfHvfPYhCxp29WTaybGa1w/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC52/VC1LbF9DY1l5VkU3/SW9sd0Vmb1VBSGFG/aiZwaWQ9QXBp";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          // DrawerHeader(
          //   child: Text("This is Drawer header"),
          //   decoration: BoxDecoration(color: Colors.red),
          // ),

          UserAccountsDrawerHeader(
            accountName: Text("Kshittiz Chaudhary"),
            accountEmail: Text("kshittizChaudhary@gmail.com"),
            // currentAccountPicture: Image.network(img),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(img),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 40,
            ),
            title: Text("Kshittiz Chaudhary"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              size: 40,
            ),
            title: Text("chaudhary@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(
              Icons.image,
              size: 40,
            ),
            title: Text("Gallery"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 40,
            ),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  }
}
