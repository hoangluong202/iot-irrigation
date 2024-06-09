import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iot_irrigation/constants/assets.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendarPage extends StatefulWidget {
  MyCalendarPage({super.key});

  @override
  State<MyCalendarPage> createState() => _MyCalendarPageState();
}

class _MyCalendarPageState extends State<MyCalendarPage> {
  late final ValueNotifier<List<Map<String, dynamic>>> _selectedEvents;
  final CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  List<Map<String, dynamic>> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents
        .where((element) => isSameDay(element["startTime"], day))
        .toList();
  }

  final List<Map<String, dynamic>> kEvents = [
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 12, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 13, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 13, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 14, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 14, 9, 46, 20),
    },
        {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 10, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 10, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 11, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 15, 11, 20),
    },
        {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 10, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 10, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 11, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 15, 11, 20),
    },
        {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 10, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 10, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 11, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 15, 11, 20),
    },
        {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 10, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 10, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 11, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 15, 11, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 9, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 9, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 10, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 15, 10, 46, 20),
    },
    {
      "id": 1,
      "name": "Lịch tưới phân bón tăng trưởng",
      "k": 30,
      "p": 30,
      "mg": 40,
      "h20": 100,
      "startTime": DateTime(2024, 6, 15, 11, 35),
      "repeat": 1,
      "area": 1,
      "level": 1,
      "duration": 680,
      "endTime": DateTime(2024, 6, 12, 15, 11, 20),
    }
  ];

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      _buildHeading(context),
      _buildCalendar(context),
    ]));
  }

  Widget _buildCalendar(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        height: 300,
        child: Column(
          children: [
            TableCalendar(
              //required
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              //logic
              // rangeStartDay: _focusedDay.subtract(const Duration(days: 7)),
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  _selectedEvents.value = _getEventsForDay(selectedDay);
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              eventLoader: (day) {
                return kEvents
                    .where((element) => isSameDay(element["startTime"], day))
                    .map((e) => e["name"])
                    .toList();
              },

              //style
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ValueListenableBuilder<List<Map<String, dynamic>>>(
                valueListenable: _selectedEvents,
                builder: (context, value, _) {
                  return Column(
                    children: value
                        .map((e) => Container(
                            margin: const EdgeInsets.only(top: 3, bottom: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Assets.eventIcon,
                                    width: 40, height: 40),
                                const SizedBox(width: 10),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(e["name"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium),
                                      Text(
                                          "${e["startTime"].hour}:${e["startTime"].minute} - ${e["endTime"].hour}:${e["endTime"].minute}"),
                                    ])
                              ],
                            )))
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ));
  }

  Widget _buildHeading(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        color: Colors.amber,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(Assets.menuIcon, width: 30, height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Lịch tưới',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ],
        ));
  }
}
