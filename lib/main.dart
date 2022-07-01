import 'package:flutter/material.dart';
import 'package:highcharts_demo/highcharts/area_chart.dart';
import 'package:highcharts_demo/highcharts/line_charts.dart';
import 'package:highcharts_demo/highcharts/single_line_stock.dart';
import 'package:highcharts_demo/highcharts/stock_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HighCharts Demo"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              AreaChart(),
              LineChart(),
              SingleLineStock(),
              StockColumn()
            ],
          ),
        ),
      ),
    );
  }
}
