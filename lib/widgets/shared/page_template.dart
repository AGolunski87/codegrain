import 'package:flutter/material.dart';
import '../app_drawer.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget child;

  const PageTemplate({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
