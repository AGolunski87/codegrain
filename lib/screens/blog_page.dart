import 'package:flutter/material.dart';
import '../widgets/blog_card.dart';
import '../widgets/shared/page_template.dart';
import '../widgets/shared/responsive_grid_view.dart';
import '../widgets/app_drawer.dart';

class BlogPage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': 'Codegrain Blog',
      'summary': 'Insights on dev, design, and strategy.',
      'slug': 'hello-codegrain',
    },
    // Add more
  ];

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Blog & Projects',
      child: ResponsiveGridView(
        children: posts
            .map((post) => BlogCard(
                  title: post['title']!,
                  summary: post['summary']!,
                  slug: post['slug']!,
                ))
            .toList(),
      ),
    );
  }
}
