import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String summary;
  final String slug;

  const BlogCard({
    Key? key,
    required this.title,
    required this.slug,
    this.summary = '',
  }) : super(key: key);

  void _openBlogUrl() async {
    final Uri url = Uri.parse('https://codegrain.co.uk/blogs/$slug');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openBlogUrl,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              if (summary.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(summary, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
