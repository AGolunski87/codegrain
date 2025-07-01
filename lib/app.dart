import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_page.dart';
import 'screens/blog_page.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeGrain',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/blog': (context) => BlogPage(),
        // add more routes here as needed
      },
    );
  }
}
