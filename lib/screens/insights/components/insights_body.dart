import 'package:flutter/material.dart';
import 'package:rid_use/screens/insights/components/insights_background.dart';
import 'package:rid_use/widgets/AppDrawer.dart';
import 'package:rid_use/widgets/NavBar.dart';
import 'package:fl_chart/fl_chart.dart';

class InsightsBody extends StatelessWidget {
  const InsightsBody({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
  Widget build(BuildContext context) {
    return InsightsBackground(
        child: Scaffold(
      backgroundColor: Color.fromARGB(0, 245, 245, 220),
      appBar: PreferredSize(
          preferredSize: preferredSize, child: myAppBar("Insights", context)),
      drawer: myDrawer(),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 0.1 * MediaQuery.of(context).size.height,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: (1 / 3) * MediaQuery.of(context).size.width,
                  height: (1 / 3) * MediaQuery.of(context).size.height,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 11,
                      minY: 0,
                      maxY: 7,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(2.6, 2),
                            FlSpot(4, 7),
                            FlSpot(4, 4),
                            FlSpot(9.4, 3),
                            FlSpot(9.7, 3),
                          ],
                        ),
                      ],
                    ),
                    swapAnimationDuration: Duration(milliseconds: 150),
                    swapAnimationCurve: Curves.linear,
                  ),
                ),
                Container(
                  width: (1 / 3) * MediaQuery.of(context).size.width,
                  height: (1 / 3) * MediaQuery.of(context).size.height,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      maxY: 20,
                      minY: -20,
                      groupsSpace: 12,
                      barTouchData: BarTouchData(enabled: true),
                      gridData: FlGridData(
                        checkToShowHorizontalLine: (value) =>
                            value % BarData.interval == 0,
                        getDrawingHorizontalLine: (value) {
                          if (value == 0) {
                            return FlLine(
                              color: const Color(0xff363753),
                              strokeWidth: 3,
                            );
                          } else {
                            return FlLine(
                              color: const Color(0xff2a2747),
                              strokeWidth: 0.8,
                            );
                          }
                        },
                      ),
                      barGroups: BarData.barData
                          .map(
                            (data) => BarChartGroupData(
                              x: data.id,
                              barRods: [
                                BarChartRodData(
                                  toY: data.y,
                                  width: 22,
                                  borderRadius: data.y > 0
                                      ? BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                        )
                                      : BorderRadius.only(
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                Expanded(child: Placeholder()),
              ],
            ),
            Expanded(
              child: Placeholder(),
            )
          ],
        ),
      ),
    ));
  }
}

class BarData {
  static int interval = 5;
  static List<Data> barData = [
    Data(
      id: 0,
      name: 'Mon',
      y: 15,
      color: Color(0xff19bfff),
    ),
    Data(
      name: 'Tue',
      id: 1,
      y: -12,
      color: Color(0xffff4d94),
    ),
    Data(
      name: 'Wed',
      id: 2,
      y: 11,
      color: Color(0xff2bdb90),
    ),
    Data(
      name: 'Thu',
      id: 3,
      y: 10,
      color: Color(0xffffdd80),
    ),
    Data(
      name: 'Fri',
      id: 4,
      y: -5,
      color: Color(0xff2bdb90),
    ),
    Data(
      name: 'Sat',
      id: 5,
      y: -17,
      color: Color(0xffffdd80),
    ),
    Data(
      name: 'Sun',
      id: 6,
      y: 5,
      color: Color(0xffff4d94),
    ),
  ];
}

class Data {
  // for ordering in the graph
  final int id;
  final String name;
  final double y;
  final Color color;

  const Data({
    required this.name,
    required this.id,
    required this.y,
    required this.color,
  });
}

class BarTitles {
  static SideTitles getTopBottomTitles() => SideTitles(
        showTitles: true,
      );

  static SideTitles getSideTitles() => SideTitles(
        showTitles: true,
      );
}
