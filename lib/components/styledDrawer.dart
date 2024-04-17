import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledDrawer extends StatefulWidget {
  const StyledDrawer({Key? key});

  @override
  State<StyledDrawer> createState() => _StyledDrawerState();
}

class _StyledDrawerState extends State<StyledDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white12),
            accountName: Text(
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              'Om Patel',
            ),
            accountEmail: Text(
              'ompatel.developer@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          // Divider(),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Handle settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  // Handle about tap
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle about tap
                },
              ),
              // Add more options as needed
            ],
          ),
        ],
      ),
    );
  }
}
