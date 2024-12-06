import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () => controller.clear(),
    );
  }
}