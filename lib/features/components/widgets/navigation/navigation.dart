import 'package:flutter/material.dart';

import '../commons/component_group_decoration.dart';

import 'navigation_bars.dart';
import 'bottom_app_bars.dart';
import 'navigation_drawers.dart';
import 'navigation_rails.dart';
import 'search_anchors.dart';
import 'tabs.dart';
import 'top_app_bars.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(label: 'Navigation', children: [
      const BottomAppBars(),
      const NavigationBars(
        selectedIndex: 0,
        isExampleBar: true,
      ),
      NavigationDrawers(scaffoldKey: scaffoldKey),
      const NavigationRails(),
      const Tabs(),
      const SearchAnchors(),
      const TopAppBars(),
    ]);
  }
}