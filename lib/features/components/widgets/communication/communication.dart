import 'package:flutter/material.dart';

import '../commons/component_group_decoration.dart';
import '../navigation/navigation_bars.dart';
import 'progress_indicators.dart';
import 'snack_bar_section.dart';

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Communication', children: [
      NavigationBars(
        selectedIndex: 1,
        isExampleBar: true,
        isBadgeExample: true,
      ),
      ProgressIndicators(),
      SnackBarSection(),
    ]);
  }
}