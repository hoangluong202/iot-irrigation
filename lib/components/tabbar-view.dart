import 'package:flutter/material.dart';

class TabBarComponet extends StatefulWidget {
  const TabBarComponet({super.key});
  @override
  State<TabBarComponet> createState() => _TabBarComponetState();
}

class _TabBarComponetState extends State<TabBarComponet>
    with SingleTickerProviderStateMixin {
      final tabViewDefault = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            tabs: <Widget>[
              Tab(
                child: Container(
                  height: 40,
                  width: 160,
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //   color: Theme.of(context).colorScheme.primary,
                  // ),
                  child: Text('THIẾT BỊ',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ),
              Tab(
                child: Text('LỊCH SỬ',
                    style: Theme.of(context).textTheme.titleSmall),
              ),
            ],
          ),
          Container(
            height: 200,
            child: TabBarView(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text('Hôm nay'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Tuần này'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
