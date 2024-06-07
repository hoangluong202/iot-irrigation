import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iot_irrigation/constants/assets.dart';

class TabBarComponent extends StatelessWidget {
  TabBarComponent({super.key});
  static const listTab = ['Thiết bị', 'Lịch sử'];

  static const dataDevices = [
    {
      "id": "1",
      "name": "Bình chứa phân Kali",
      "status": true,
      "minValue": 0,
      "maxValue": 5000,
      "value": 3000,
    },
    {
      "id": "2",
      "name": "Bình chứa phân lân",
      "status": true,
      "minValue": 0,
      "maxValue": 5000,
      "value": 2000,
    },
    {
      "id": "3",
      "name": "Bình chứa phân Mg",
      "status": true,
      "minValue": 0,
      "maxValue": 5000,
      "value": 4000,
    },
    {
      "id": "4",
      "name": "Bình chứa nước",
      "status": true,
      "minValue": 0,
      "maxValue": 5000,
      "value": 4500,
    },
    {
      "id": "5",
      "name": "Bình trộn phân",
      "status": false,
      "minValue": 0,
      "maxValue": 1000,
      "value": 0,
    },
    {
      "id": "6",
      "name": "Khu vực 1",
      "status": true,
      "minValue": 0,
      "maxValue": 1,
      "value": 1,
    },
    {
      "id": "7",
      "name": "Khu vực 2",
      "status": false,
      "minValue": 0,
      "maxValue": 1,
      "value": 0,
    },
    {
      "id": "8",
      "name": "Khu vực 3",
      "status": false,
      "minValue": 0,
      "maxValue": 1,
      "value": 0,
    },
    {
      "id": "9",
      "name": "Nhiệt độ",
      "status": true,
      "minValue": 0,
      "maxValue": 60,
      "value": 27,
    },
    {
      "id": "10",
      "name": "Độ ẩm",
      "status": true,
      "minValue": 0,
      "maxValue": 100,
      "value": 65,
    },
    {
      "id": "11",
      "name": "Ánh sáng",
      "status": true,
      "minValue": 0,
      "maxValue": 1000,
      "value": 333,
    },
  ];

  final dataHistory = [
    {
      "time": DateTime(2024, 9, 7, 20, 30, 01),
      "deviceName": "Bình chứa phân Kali",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 18, 30, 01),
      "deviceName": "Bình chứa phân lân",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa phân Mg",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa nước",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình trộn phân",
      "status": false,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Khu vực 1",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 20, 30, 01),
      "deviceName": "Bình chứa phân Kali",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 18, 30, 01),
      "deviceName": "Bình chứa phân lân",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa phân Mg",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa nước",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình trộn phân",
      "status": false,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Khu vực 1",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 20, 30, 01),
      "deviceName": "Bình chứa phân Kali",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 18, 30, 01),
      "deviceName": "Bình chứa phân lân",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa phân Mg",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình chứa nước",
      "status": true,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Bình trộn phân",
      "status": false,
    },
    {
      "time": DateTime(2024, 9, 7, 19, 30, 01),
      "deviceName": "Khu vực 1",
      "status": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.all(left: 10, right: 5, top: 5, bottom: 0),
        child: DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            tabs: <Widget>[
              ..._buildTabWidgets(listTab, context),
            ],
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Container(
            height: 405,
            margin: const EdgeInsets.only(top: 10),
            child: TabBarView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 160,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildTank(context, dataDevices[0]),
                            _buildTank(context, dataDevices[1]),
                            _buildTank(context, dataDevices[2]),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 160,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildTank(context, dataDevices[3]),
                            _buildTank(context, dataDevices[4]),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 80,
                                width: 160,
                                margin: const EdgeInsets.only(
                                    top: 5, right: 5, left: 5),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      _buildArea(context, dataDevices[5]),
                                      _buildArea(context, dataDevices[6]),
                                      _buildArea(context, dataDevices[7])
                                    ])),
                            Container(
                                height: 80,
                                width: 160,
                                margin: const EdgeInsets.only(
                                    top: 5, right: 5, left: 5),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      _buildSensor(context, dataDevices[8]),
                                      _buildSensor(context, dataDevices[9]),
                                      _buildSensor(context, dataDevices[10])
                                    ]))
                          ]),
                    )
                  ],
                ),
                Container(
                    height: 400,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                          columnSpacing: 3,
                          headingRowHeight: 30,
                          dataTextStyle:
                              Theme.of(context).textTheme.displaySmall,
                          dataRowMinHeight: 25,
                          dataRowMaxHeight: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onBackground,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          columns: [
                            DataColumn(label: Text('Thời gian')),
                            DataColumn(label: Text('Thiết bị')),
                            DataColumn(label: Text('Hoạt động')),
                          ],
                          rows: dataHistory.map((e) {
                            return DataRow(cells: [
                              DataCell(
                                  Text(e['time'].toString().substring(0, 19))),
                              DataCell(Text(e['deviceName'].toString())),
                              DataCell(Text(e['status'].toString() == 'true'
                                  ? 'Mở'
                                  : 'Đóng')),
                            ]);
                          }).toList()

                          // [
                          //   DataRow(cells: [
                          //     DataCell(Text(dataHistory[0]['time'].toString().substring(0, 19))),
                          //     DataCell(Text('Bình chứa Photpho')),
                          //     DataCell(Text('Mở')),
                          //   ]),
                          // ],
                          ),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }

  List<Widget> _buildTabWidgets(List<String> listTab, BuildContext context) {
    List<Widget> widgets = [];
    for (var tab in listTab) {
      widgets.add(Tab(
        child: Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(tab.toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall),
        ),
      ));
    }
    return widgets;
  }

  Widget _buildTank(BuildContext context, Map<String, dynamic> device) {
    return Container(
      height: 160,
      width: 160,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  Assets.assetsDevice[device['id']] ?? Assets.avatarIcon,
                  width: 60,
                  height: 60,
                ),
                Container(
                  width: 80,
                  child: Text(
                    '${device['name']}',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 20,
              width: 160,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Trạng thái: ',
                        style: Theme.of(context).textTheme.displaySmall),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(device['status'] ? 'Mở' : 'Đóng',
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Container(
                        width: 30,
                        child: Switch(
                          value: device['status'],
                          onChanged: (value) {
                            print(value);
                          },
                          activeColor: device['id'] == "4"
                              ? Theme.of(context).colorScheme.secondary
                              : Theme.of(context).colorScheme.primary,
                          inactiveTrackColor:
                              Theme.of(context).colorScheme.surface,
                        )),
                  ])),
          Container(
              height: 20,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Thể tích: ',
                        style: Theme.of(context).textTheme.displaySmall),
                    Text('${device['value']}/${device['maxValue']} (ml)',
                        style: Theme.of(context).textTheme.displaySmall),
                  ])),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            height: 20,
            child: Slider(
              value: device['value'].toDouble(),
              min: device['minValue'].toDouble(),
              max: device['maxValue'].toDouble(),
              divisions: 5,
              onChanged: (value) {
                print(value);
              },
              activeColor: device['id'] == "4"
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
              inactiveColor: Theme.of(context).colorScheme.background,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildArea(BuildContext context, Map<String, dynamic> device) {
    return Container(
        width: 120,
        height: 20,
        decoration: BoxDecoration(
          color: device['status']
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.only(left: 20, right: 20),
        margin: const EdgeInsets.only(top: 3, bottom: 3),
        child: Text(device['name'],
            style: Theme.of(context).textTheme.labelMedium));
  }

  Widget _buildSensor(BuildContext context, Map<String, dynamic> device) {
    return Container(
        height: 72,
        width: 52,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                  Assets.assetsDevice[device['id']] ?? Assets.avatarIcon,
                  width: 25,
                  height: 25),
              Text(device['name'],
                  style: Theme.of(context).textTheme.displaySmall),
              Text(
                  '${device['value']}${device['id'] == "9" ? '°C' : device['id'] == "10" ? '%' : 'lx'}',
                  style: Theme.of(context).textTheme.labelLarge),
            ]));
  }
}
