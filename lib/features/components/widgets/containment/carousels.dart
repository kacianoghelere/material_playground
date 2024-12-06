import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../commons/component_decoration.dart';

class Carousels extends StatelessWidget {
  const Carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Carousel',
      tooltipMessage: 'Use CarouselView',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Uncontained Carousel'),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 150),
            child: CarouselView(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
              ),
              shrinkExtent: 100,
              itemExtent: 180,
              children: List<Widget>.generate(20, (index) {
                return Center(
                  child: Text('Item $index'),
                );
              }),
            ),
          ),
          colDivider,
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Uncontained Carousel with snapping effect'),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 150),
            child: CarouselView(
              itemSnapping: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
              ),
              shrinkExtent: 100,
              itemExtent: 180,
              children: List<Widget>.generate(20, (index) {
                return Center(
                  child: Text('Item $index'),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}