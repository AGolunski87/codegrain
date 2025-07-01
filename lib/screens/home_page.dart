import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Codegrain')),
      drawer: AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, I'm the founder of Codegrain",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                "A product leader delivering real innovation through technical insight and strategic execution.",
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/blog'),
                child: Text('Read My Blog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
