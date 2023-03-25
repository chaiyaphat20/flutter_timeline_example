import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time line Tile Demo"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 50,
            child: TimelineTile(
              endChild: Text("END"),
              isFirst: true,
              alignment: TimelineAlign.manual,
              lineXY: 0,
              beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
              afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
            ),
          ),
          SizedBox(
            width: 100,
            child: TimelineDivider(
              thickness: 6,
              color: Colors.green,
              begin: 0.12,
              end: 0.88,
            ),
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: TimelineTile(
              beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
              afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
              alignment: TimelineAlign.manual,
              lineXY: 1,
            ),
          ),
          SizedBox(
            width: 100,
            child: TimelineDivider(
              thickness: 6,
              color: Colors.green,
              begin: 0.12,
              end: 0.88,
            ),
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: TimelineTile(
              endChild: Text("LAST"),
              alignment: TimelineAlign.manual,
              beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
              afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
              lineXY: 0,
              isLast: true,
            ),
          ),
        ],
      ),
    );
  }
}
