import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/blog_card.dart'; // make sure this import path is correct

class BlogPage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': 'How I’m Transforming Codegrain',
      'summary': 'A behind-the-scenes look...',
      'slug': 'transforming-codegrain',
    },
    {
      'title': 'Why Technical Product Managers Win',
      'summary': 'Exploring the edge...',
      'slug': 'technical-pm-win',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blog')),
      drawer: AppDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 24),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return BlogCard(
            title: post['title']!,
            summary: post['summary'] ?? '',
            slug: post['slug']!,
          );
        },
      ),
    );
  }
}
