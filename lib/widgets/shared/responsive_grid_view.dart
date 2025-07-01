import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  final List<Widget> children;

  const ResponsiveGridView({Key? key, required this.children}) : super(key: key);

  int _getCrossAxisCount(double width) {
    if (width >= 1200) return 6;
    if (width >= 800) return 3;
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final crossAxisCount = _getCrossAxisCount(constraints.maxWidth);

        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: children,
        );
      },
    );
  }
}
