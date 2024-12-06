import 'package:flutter/material.dart';
import '../commons/component_group_decoration.dart';

import 'common_buttons.dart';
import 'floating_action_buttons.dart';
import 'icon_buttons.dart';
import 'segmented_buttons.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Buttons', children: <Widget>[
      CommonButtons(),
      FloatingActionButtons(),
      IconButtons(),
      SegmentedButtons(),
    ]);
  }
}