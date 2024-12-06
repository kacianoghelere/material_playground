import 'package:flutter/material.dart';

import '../commons/component_decoration.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? selectedDate;
  final DateTime _firstDate = DateTime(DateTime.now().year - 2);
  final DateTime _lastDate = DateTime(DateTime.now().year + 1);

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Date picker',
      tooltipMessage: 'Use showDatePicker',
      child: TextButton.icon(
        onPressed: () async {
          DateTime? date = await showDatePicker(
            context: context,
            initialDate: selectedDate ?? DateTime.now(),
            firstDate: _firstDate,
            lastDate: _lastDate,
          );
          setState(() {
            selectedDate = date;
            if (selectedDate != null) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'),
              ));
            }
          });
        },
        icon: const Icon(Icons.calendar_month),
        label: const Text(
          'Show date picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}