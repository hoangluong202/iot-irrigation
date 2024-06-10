import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iot_irrigation/constants/assets.dart';
import 'package:iot_irrigation/ulils/date-time.dart';

class CalendarDetailPage extends StatefulWidget {
  CalendarDetailPage({super.key});

  @override
  _CalendarDetailPageState createState() => _CalendarDetailPageState();
}

class _CalendarDetailPageState extends State<CalendarDetailPage> {
  @override
  Widget build(BuildContext context) {
    final calendar =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
        appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.primary),
          title: Text('Thông tin lịch',
              style: Theme.of(context).textTheme.titleLarge),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(children: [
              Center(
                child: Text(calendar['name'],
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              _buildLabelWithIconSvg(context, 'Thành phần', Assets.glutenIcon),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSurface)),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                _buildLabelWithIconImg(
                                    context, 'Phân Kali', Assets.kImage),
                                Text('${calendar['k']}(ml)',
                                    style:
                                        Theme.of(context).textTheme.labelMedium)
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                _buildLabelWithIconImg(
                                    context, 'Phân lân', Assets.pImage),
                                Text('${calendar['p']}(ml)',
                                    style:
                                        Theme.of(context).textTheme.labelMedium)
                              ],
                            ),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                _buildLabelWithIconImg(
                                    context, 'Phân Magie', Assets.mgImage),
                                Text('${calendar['mg']}(ml)',
                                    style:
                                        Theme.of(context).textTheme.labelMedium)
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            child: Column(
                              children: [
                                _buildLabelWithIconImg(
                                    context, 'Nước', Assets.h2oImage),
                                Text('${calendar['h2o']}(ml)',
                                    style:
                                        Theme.of(context).textTheme.labelMedium)
                              ],
                            ),
                          ),
                        ])
                  ])),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildLabelWithIconSvg(
                      context, 'Thời gian tưới', Assets.clockIcon),
                  const SizedBox(height: 3),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onSurface)),
                      child: Text(
                          DateTimeUtils.getFormattedDate(calendar['startTime']),
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onSurface)),
                      child: Text(
                          DateTimeUtils.getFormattedTime(calendar['startTime']),
                          style: Theme.of(context).textTheme.labelMedium),
                    )
                  ])
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  _buildLabelWithIconSvg(context, 'Lặp lại', Assets.repeatIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text('${calendar['repeat']} (lần)',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildLabelWithIconSvg(
                      context, 'Khu vực tưới', Assets.locationIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text('Khu vực ${calendar['area']}',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  _buildLabelWithIconSvg(
                      context, 'Chế độ trộn', Assets.levelIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text(
                        calendar['repeat'] == 1
                            ? 'Sơ'
                            : calendar['repeat'] == 2
                                ? 'Trung bình'
                                : 'Nhuyễn',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildLabelWithIconSvg(
                      context, 'Luồng phân bón', Assets.clockIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text(
                        '${max<int>(calendar['h2o'], max<int>(calendar['mg'], max<int>(calendar['k'], calendar['p'])))} (giây)',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  _buildLabelWithIconSvg(context, 'Trộn', Assets.clockIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text(
                        '${calendar['repeat'] * (calendar['h2o'] + calendar['mg'] + calendar['k'] + calendar['p'])} (giây)',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildLabelWithIconSvg(
                      context, 'Thời gian tưới', Assets.clockIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text(
                        '${calendar['h2o'] + calendar['mg'] + calendar['k'] + calendar['p']} (giây)',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  _buildLabelWithIconSvg(
                      context, 'Tổng thời gian', Assets.clockIcon),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                    child: Text('${calendar['duration']} (giây)',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ]),
              ])
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
