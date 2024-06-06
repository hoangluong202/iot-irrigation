import 'package:flutter/material.dart';
import 'package:iot_irrigation/constants/app_theme.dart';
import 'package:iot_irrigation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.themeData(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
