import 'package:flutter/material.dart';

import '../commons/component_group_decoration.dart';

import 'checkboxes.dart';
import 'chips.dart';
import 'date_picker.dart';
import 'menus.dart';
import 'radios.dart';
import 'sliders.dart';
import 'switches.dart';
import 'time_picker.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Selection', children: [
      Checkboxes(),
      Chips(),
      DatePicker(),
      TimePicker(),
      Menus(),
      Radios(),
      Sliders(),
      Switches(),
    ]);
  }
}