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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("START"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      iconStyle: IconStyle(
                          iconData: Icons.ac_unit, color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(size: 30, Icons.timer),
                            Text("12.00"),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                          height: 2,
                          child: const DecoratedBox(
                            decoration: const BoxDecoration(color: Colors.red),
                          ),
                        ),
                        Text("ทานอาหาร"),
                      ]),
                    ),
                  ),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("MID"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("MID"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("MID"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("MID"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("MID"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ),
              SizedBox(
                width: 130,
                height: 100,
                child: TimelineTile(
                  endChild: Text("LAST"),
                  beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                  afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                  isLast: true,
                  indicatorStyle: IndicatorStyle(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                      indicator: Container(
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
