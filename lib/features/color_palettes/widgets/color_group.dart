import 'package:flutter/material.dart';

import 'color_chip.dart';

class ColorGroup extends StatelessWidget {
  const ColorGroup({super.key, required this.children});

  final List<ColorChip> children;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
