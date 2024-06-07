import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iot_irrigation/components/tabbar-view.dart';
import 'package:iot_irrigation/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  static String svgString = Assets.avatarIcon.toString();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
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
                    Text('27°C',
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                )),
            TabBarComponet(),
          ]),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.homeIcon,
              width: 20,
              height: 20,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.calendarIcon, width: 20, height: 20),
            label: 'Calendar')
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: SvgPicture.asset(Assets.plusIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
