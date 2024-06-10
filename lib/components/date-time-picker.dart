import 'dart:ffi';

import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = const TimeOfDay(hour: 00, minute: 00);
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2012),
        lastDate: DateTime(2032),
        fieldLabelText: 'Chọn ngày');
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${selectedDate.toLocal()}"
            .split(' ')[0]
            .split('-')
            .reversed
            .join('/');
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
        print(picked);
        _timeController.text = selectedTime.format(context);
      });
    }
  }

  @override
  void initState() {
    _dateController.text = '10/06/2024';
    _timeController.text = '00:00';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 100,
          child: InkWell(
              onTap: () {
                _selectDate(context);
              },
              child: TextFormField(
                style: Theme.of(context).textTheme.displayMedium,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.text,
                enabled: false,
                controller: _dateController,
              ))),
      const SizedBox(width: 10),
      Container(
          width: 60,
          child: InkWell(
              onTap: () {
                _selectTime(context);
              },
              child: TextFormField(
                style: Theme.of(context).textTheme.displayMedium,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.text,
                enabled: false,
                controller: _timeController,
              )))
    ]);
  }
}
