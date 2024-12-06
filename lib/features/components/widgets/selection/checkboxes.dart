import 'package:flutter/material.dart';

import '../commons/component_decoration.dart';

class Checkboxes extends StatefulWidget {
  const Checkboxes({super.key});

  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  bool? isChecked0 = true;
  bool? isChecked1;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Checkboxes',
      tooltipMessage: 'Use CheckboxListTile or Checkbox',
      child: Column(
        children: <Widget>[
          CheckboxListTile(
            tristate: true,
            value: isChecked0,
            title: const Text('Option 1'),
            onChanged: (value) {
              setState(() {
                isChecked0 = value;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            value: isChecked1,
            title: const Text('Option 2'),
            onChanged: (value) {
              setState(() {
                isChecked1 = value;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            value: isChecked2,
            title: const Text('Option 3'),
            // TODO: showcase error state https://github.com/flutter/flutter/issues/118616
            onChanged: (value) {
              setState(() {
                isChecked2 = value;
              });
            },
          ),
          const CheckboxListTile(
            tristate: true,
            title: Text('Option 4'),
            value: true,
            onChanged: null,
          ),
        ],
      ),
    );
  }
}