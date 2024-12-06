import 'package:flutter/material.dart';

import '../commons/component_decoration.dart';
import '../../utils/constants.dart';

class CommonButtons extends StatefulWidget {
  const CommonButtons({super.key});

  @override
  State<CommonButtons> createState() => _CommonButtonsState();
}

class _CommonButtonsState extends State<CommonButtons> {
  @override
  Widget build(BuildContext context) {
    return const ComponentDecoration(
      label: 'Common buttons',
      tooltipMessage:
          'Use ElevatedButton, FilledButton, FilledButton.tonal, OutlinedButton, or TextButton',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtonsWithoutIcon(isDisabled: false),
            ButtonsWithIcon(),
            ButtonsWithoutIcon(isDisabled: true),
          ],
        ),
      ),
    );
  }
}

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({super.key, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Elevated'),
            ),
            colDivider,
            FilledButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Filled'),
            ),
            colDivider,
            FilledButton.tonal(
              onPressed: isDisabled ? null : () {},
              child: const Text('Filled tonal'),
            ),
            colDivider,
            OutlinedButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Outlined'),
            ),
            colDivider,
            TextButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Text'),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({super.key});

  static const Text _label = Text('Icon');
  static const Icon _icon = Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: _icon,
              label: _label,
            ),
            colDivider,
            FilledButton.icon(
              onPressed: () {},
              label: _label,
              icon: _icon,
            ),
            colDivider,
            FilledButton.tonalIcon(
              onPressed: () {},
              label: _label,
              icon: _icon,
            ),
            colDivider,
            OutlinedButton.icon(
              onPressed: () {},
              icon: _icon,
              label: _label,
            ),
            colDivider,
            TextButton.icon(
              onPressed: () {},
              icon: _icon,
              label: _label,
            )
          ],
        ),
      ),
    );
  }
}