import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class TechDemosPage extends StatelessWidget {
  final List<Map<String, String>> demos = [
    {
      'title': 'Lean Backlog Tool',
      'description':
          'A minimalist tool for product owners to manage lean agile backlogs.',
    },
    {
      'title': 'Feature Flag Dashboard',
      'description':
          'A dashboard for toggling features and running live A/B tests.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tech Demos')),
      drawer: AppDrawer(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 4,
        ),
        itemCount: demos.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(demos[index]['title']!),
            subtitle: Text(demos[index]['description']!),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
