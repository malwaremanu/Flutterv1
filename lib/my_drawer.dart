import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('johndoe@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'JD',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.inbox),
                  title: Text('Inbox'),
                  trailing: Chip(
                    label: Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Starred'),
                ),
                ListTile(
                  leading: Icon(Icons.send),
                  title: Text('Sent'),
                ),
                ListTile(
                  leading: Icon(Icons.drafts),
                  title: Text('Drafts'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help & feedback'),
                ),

                ListTile(
                  leading: Icon(Icons.lock),
                  title:Text('Logout'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
