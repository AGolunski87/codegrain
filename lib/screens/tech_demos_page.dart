import 'package:flutter/material.dart';
import '../widgets/shared/page_template.dart';
import '../widgets/shared/responsive_grid_view.dart';
import '../widgets/tech_demo_card.dart';

class TechDemosPage extends StatelessWidget {
  final List<Map<String, String>> demos = [
    {
      'title': 'Creafex, media sharing app',
      'type':
          'Web app designed for easy media sharing and clear pricing for creators',
      'url': 'https://creafex.vercel.app/'
    },
    {
      'title': 'Ducktective',
      'type': 'A fun, interactive AI driven who dunit game',
      'url': 'https://codegrain.vercel.app/'
    },
    {
      'title': 'Cryptid Studio',
      'type': 'Manage your own cryptid social media agency',
      'url': 'https://cryptid-creator-flutter.vercel.app/'
    },
    {
      'title': 'Pulse CRM',
      'type': 'A simple, clean CRM client and ecommerce app',
      'url': 'https://pulsecrm.vercel.app/'
    },
    {
      'title': 'Marketing AI',
      'type':
          'A simple, clean all in one marketing tool from logo to website and beyond',
      'url': 'https://replit.com/@carnagechef/MarketingMaster/'
    },
    {
      'title': 'Smooshems',
      'type': 'Top trumps but nightmare fueled',
      'url': 'https://codegrain.vercel.app/'
    },
    {
      'title': 'coinflip',
      'type': 'A simple coin flip game, with advanced analytics',
      'url': 'https://codegrain.vercel.app/'
    },
    {
      'title': 'dumbify AI',
      'type':
          'Ai explaing complex topics in stupid ways "tell me about string theory"',
      'url': 'https://codegrain.vercel.app/blog'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Tech Demos',
      child: ResponsiveGridView(
        children: demos
            .map((demo) => TechDemoCard(
                title: demo['title']!, type: demo['type']!, url: demo['url']!))
            .toList(),
      ),
    );
  }
}
