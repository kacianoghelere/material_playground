import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../commons/component_decoration.dart';

class TopAppBars extends StatelessWidget {
  const TopAppBars({super.key});

  static final actions = [
    IconButton(icon: const Icon(Icons.attach_file), onPressed: () {}),
    IconButton(icon: const Icon(Icons.event), onPressed: () {}),
    IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Top app bars',
      tooltipMessage:
          'Use AppBar, SliverAppBar, SliverAppBar.medium, or  SliverAppBar.large',
      child: Column(
        children: [
          AppBar(
            title: const Text('Center-aligned'),
            leading: const BackButton(),
            actions: [
              IconButton(
                iconSize: 32,
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {},
              ),
            ],
            centerTitle: true,
          ),
          colDivider,
          AppBar(
            title: const Text('Small'),
            leading: const BackButton(),
            actions: actions,
            centerTitle: false,
          ),
          colDivider,
          SizedBox(
            height: 100,
            child: CustomScrollView(
              slivers: [
                SliverAppBar.medium(
                  title: const Text('Medium'),
                  leading: const BackButton(),
                  actions: actions,
                ),
                const SliverFillRemaining(),
              ],
            ),
          ),
          colDivider,
          SizedBox(
            height: 130,
            child: CustomScrollView(
              slivers: [
                SliverAppBar.large(
                  title: const Text('Large'),
                  leading: const BackButton(),
                  actions: actions,
                ),
                const SliverFillRemaining(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}