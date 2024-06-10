import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iot_irrigation/constants/assets.dart';

class CalendarForm extends StatefulWidget {
  const CalendarForm({super.key});

  @override
  State<CalendarForm> createState() => _CalendarFormState();
}

class _CalendarFormState extends State<CalendarForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedArea = 1;
  int _selectedLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thêm lịch tưới',
              style: Theme.of(context).textTheme.titleLarge),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(children: [
                    _buildLabelWithIconSvg(
                        context, 'Tên lịch tưới', Assets.labelIcon),
                    TextFormField(
                      style: Theme.of(context).textTheme.displayMedium,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Lịch tưới ...',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    _buildLabelWithIconSvg(
                        context, 'Thành phần', Assets.glutenIcon),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 140,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildLabelWithIconImg(
                                        context, 'Phân Kali', Assets.kImage),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          hintText: '100',
                                          suffixText: 'ml',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                  ])),
                          Container(
                              width: 140,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildLabelWithIconImg(
                                        context, 'Phân lân', Assets.pImage),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          hintText: '100',
                                          suffixText: 'ml',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                  ])),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 140,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildLabelWithIconImg(
                                        context, 'Phân Magie', Assets.mgImage),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          hintText: '100',
                                          suffixText: 'ml',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                  ])),
                          Container(
                              width: 140,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildLabelWithIconImg(
                                        context, 'Nước', Assets.h2oImage),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          hintText: '100',
                                          suffixText: 'ml',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                  ])),
                        ]),
                    _buildLabelWithIconSvg(
                        context, 'Khu vực tưới', Assets.locationIcon),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('1'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 1 == _selectedArea
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 1,
                              groupValue: _selectedArea,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedArea = value ?? 1;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('2'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 2 == _selectedArea
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            iconColor: 2 == _selectedArea
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 2,
                              groupValue: _selectedArea,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedArea = value ?? 2;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('3'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 3 == _selectedArea
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 3,
                              groupValue: _selectedArea,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedArea = value ?? 3;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    _buildLabelWithIconSvg(
                        context, 'Chế độ trộn', Assets.levelIcon),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Sơ'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 1 == _selectedLevel
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 1,
                              groupValue: _selectedLevel,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedLevel = value ?? 1;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Trung bình'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 2 == _selectedLevel
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            iconColor: 2 == _selectedLevel
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 2,
                              groupValue: _selectedLevel,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedLevel = value ?? 2;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Nhuyễn'),
                            horizontalTitleGap: 0,
                            titleTextStyle:
                                Theme.of(context).textTheme.displayMedium,
                            textColor: 3 == _selectedLevel
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            leading: Radio<int>(
                              value: 3,
                              groupValue: _selectedLevel,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedLevel = value ?? 3;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    _buildLabelWithIconSvg(
                        context, 'Thời gian bắt đầu', Assets.clockIcon),
                    // TextFormField(
                    //   keyboardType: TextInputType.datetime,
                    // ),
                    _buildLabelWithIconSvg(
                        context, 'Lặp lại', Assets.repeatIcon),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.displayMedium,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, right: 10),
                          hintText: '1',
                          suffixText: 'lần',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ])),
            ])));
  }

  Widget _buildLabelWithIconSvg(
      BuildContext context, String label, String icon) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 32, height: 32),
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(label, style: Theme.of(context).textTheme.labelMedium)),
      ],
    );
  }

  Widget _buildLabelWithIconImg(
      BuildContext context, String label, String icon) {
    return Row(
      children: [
        Image.asset(icon, width: 32, height: 32),
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(label, style: Theme.of(context).textTheme.labelSmall)),
      ],
    );
  }
}
