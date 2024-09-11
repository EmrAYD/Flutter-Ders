import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_scrolls_app/card_listtile.dart';
import 'package:flutter_scrolls_app/custom_scroll_ve_slivers.dart';
import 'package:flutter_scrolls_app/gesture_detector_kullanimi.dart';
import 'package:flutter_scrolls_app/gridview_kullanimi.dart';
import 'package:flutter_scrolls_app/listview_kullanimi.dart';
import 'package:flutter_scrolls_app/listview_layout_problemleri.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange,),

      title: 'Material App',
      home: CollapsableToolbar(),
      builder: EasyLoading.init(),
    );
  }
}
