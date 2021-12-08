import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var icons;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Title"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              title: Text("Menus"),
            ),
            ListTile(
              title: Text("Logout"),
            ),
          ListTile(
            title: Text("logout"),onTap: () {
            
          Navigator.pushNamed(context, '/second');
          }, icon: Icon(Icons.arrow_forward),
      
          )},
          )],
        ),
      ),
    );
  }
}
