import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';

class StockColumn extends StatelessWidget {
  const StockColumn({Key? key}) : super(key: key);

  final String _chartData = '''{
    accessibility: {
      enabled: false
    },
    chart: {
      alignTicks: false
    },
    rangeSelector: {
      selected: 1
    },
    title: {
      text: 'Stock Column'
    },
      series: [
      {
            type: 'column',
            name: 'AAPL Stock Volume',
            data: [[1588858200000,115215200],[1588944600000,133838400],[1589203800000,145946400],[1589290200000,162301200],[1589376600000,200622400],[1589463000000,158929200],[1589549400000,166348400],[1589808600000,135178400],[1589895000000,101729600],[1589981400000,111504800],[1590067800000,102688800],[1590154200000,81803200],[1590499800000,125522000],[1590586200000,112945200],[1590672600000,133560800],[1590759000000,153532400],[1591018200000,80791200],[1591104600000,87642800],],
            dataGrouping: {
                units: [[
                    'week', // unit name
                    [1] // allowed multiples
                ], [
                    'month',
                    [1, 2, 3, 4, 6]
                ]]
            }
        }
        ]
    }''';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      child: HighCharts(
        loader: const SizedBox(
          child: LinearProgressIndicator(),
          width: 200,
        ),
        size: const Size(400, 400),
        data: _chartData,
        scripts: const ["https://code.highcharts.com/highcharts.js"],
      ),
    );
  }
}
