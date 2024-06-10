import 'package:flutter/material.dart';
import 'package:iot_irrigation/components/calendar.dart';
import 'package:iot_irrigation/components/tabbar-view.dart';
import 'package:iot_irrigation/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iot_irrigation/pages/calendar-form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0 ? _buildHome(context) : MyCalendarPage(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.surface,
          currentIndex: _selectedIndex,
          onTap: (value) => {_onItemTapped(value)},
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.homeInactiveIcon,
                  width: 20,
                  height: 20,
                ),
                activeIcon: SvgPicture.asset(
                  Assets.homeActiveIcon,
                  width: 30,
                  height: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.calendarInactiveIcon,
                    width: 20, height: 20),
                activeIcon: SvgPicture.asset(Assets.calendarActiveIcon,
                    width: 30, height: 30),
                label: 'Calendar')
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CalendarForm();
          }));
        },
        child: SvgPicture.asset(Assets.plusIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget _buildHome(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Xin chào, Lương!',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text('Chuẩn bị tưới cây thôi nào !!',
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.avatarIcon,
                    width: 40,
                    height: 40,
                  ),
                ],
              )),
          Container(
              margin:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(Assets.cloudyIcon, width: 80, height: 80),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Cloudy',
                            style: Theme.of(context).textTheme.titleMedium),
                        Text('10/06/2024',
                            style: Theme.of(context).textTheme.displayMedium),
                        Text('Thủ Đức, Hồ Chí Minh',
                            style: Theme.of(context).textTheme.displayMedium),
                      ]),
                  Text('27°C', style: Theme.of(context).textTheme.titleMedium),
                ],
              )),
          TabBarComponent(),
        ]);
  }
}
