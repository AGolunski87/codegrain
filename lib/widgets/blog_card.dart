import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String summary;
  final String slug;

  const BlogCard({
    super.key,
    required this.title,
    required this.slug,
    this.summary = '',
  });

  void _openBlogUrl() async {
    final Uri url = Uri.parse('https://codegrain.co.uk/$slug');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('❌ Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openBlogUrl,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.headlineSmall),
              if (summary.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(summary, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
