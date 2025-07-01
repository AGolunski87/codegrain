import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let’s Work Together',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'I’m available for consulting or fractional product leadership engagements.',
            ),
            SizedBox(height: 8),
            Text('Email: your.email@codegrain.com'),
            SizedBox(height: 8),
            Text('GitHub: github.com/yourusername'),
            SizedBox(height: 8),
            Text('LinkedIn: linkedin.com/in/yourprofile'),
          ],
        ),
      ),
    );
  }
}
