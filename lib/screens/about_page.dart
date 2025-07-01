import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me')),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "I'm a digital product manager and founder of Codegrain. I bring a unique blend of strategic product ownership and technical depth, driving innovation in every project I lead.",
              ),
              SizedBox(height: 12),
              Text(
                "With experience in agile project management, technical consulting, and product strategy, I help organizations build meaningful digital experiences that scale.",
              ),
              SizedBox(height: 24),
              Text(
                'Company: Codegrain',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "I operate as a solo consultant under the Codegrain brand, offering product leadership and strategy consulting.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
