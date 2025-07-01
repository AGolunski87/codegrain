import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('Navigate')),
          ListTile(
            title: Text('About'),
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
          ListTile(
            title: Text('Blog'),
            onTap: () => Navigator.pushNamed(context, '/blog'),
          ),
          ListTile(
            title: Text('Tech Demos'),
            onTap: () => Navigator.pushNamed(context, '/demos'),
          ),
          ListTile(
            title: Text('Contact'),
            onTap: () => Navigator.pushNamed(context, '/contact'),
          ),
        ],
      ),
    );
  }
}
