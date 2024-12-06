import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../commons/component_decoration.dart';

class ProgressIndicators extends StatefulWidget {
  const ProgressIndicators({super.key});

  @override
  State<ProgressIndicators> createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  bool playProgressIndicator = false;

  @override
  Widget build(BuildContext context) {
    final double? progressValue = playProgressIndicator ? null : 0.7;

    return ComponentDecoration(
      label: 'Progress indicators',
      tooltipMessage:
          'Use CircularProgressIndicator or LinearProgressIndicator',
      child: Column(
        children: <Widget>[
          Row(
            children: [
              IconButton(
                isSelected: playProgressIndicator,
                selectedIcon: const Icon(Icons.pause),
                icon: const Icon(Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    playProgressIndicator = !playProgressIndicator;
                  });
                },
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    rowDivider,
                    CircularProgressIndicator(
                      value: progressValue,
                    ),
                    rowDivider,
                    Expanded(
                      child: LinearProgressIndicator(
                        value: progressValue,
                      ),
                    ),
                    rowDivider,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}