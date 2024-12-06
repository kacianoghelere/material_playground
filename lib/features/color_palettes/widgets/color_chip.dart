import 'package:flutter/material.dart';

class ColorChip extends StatelessWidget {
  final Color color;
  final Color? onColor;
  final String label;

  const ColorChip({
    super.key,
    required this.color,
    required this.label,
    this.onColor,
  });

  static Color contrastColor(Color color) =>
    switch (ThemeData.estimateBrightnessForColor(color)) {
      Brightness.dark => Colors.white,
      Brightness.light => Colors.black
    };

  @override
  Widget build(BuildContext context) {
    final Color labelColor = onColor ?? contrastColor(color);

    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(child: Text(label, style: TextStyle(color: labelColor))),
          ],
        ),
      ),
    );
  }
}