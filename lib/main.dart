import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // This is the file you showed above

import 'screens/home_page.dart';
import 'screens/about_page.dart';
import 'screens/blog_page.dart';
import 'screens/tech_demos_page.dart';
import 'screens/contact_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(CodegrainApp());
}

class CodegrainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codegrain Portfolio',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/blog': (context) => BlogPage(),
        '/tech-demos': (context) => TechDemosPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
