import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class BlogPage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': 'How I’m Transforming Codegrain',
      'summary':
          'A behind-the-scenes look at the process innovation and strategic shifts reshaping my solo consultancy.',
    },
    {
      'title': 'Why Technical Product Managers Win',
      'summary':
          'Exploring the edge a technical background brings to digital product management roles.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blog')),
      drawer: AppDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: posts.length,
        itemBuilder: (context, index) => Card(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            title: Text(posts[index]['title']!),
            subtitle: Text(posts[index]['summary']!),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
