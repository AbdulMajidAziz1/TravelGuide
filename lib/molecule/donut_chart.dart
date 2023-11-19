import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({Key? key}) : super(key: key);

  @override
  State<DonutChart> createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  late List<GDPData> _chartData;
  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SfCircularChart(
      title: ChartTitle(
          text: 'This month’s top-up for all travels', textStyle: textS616B),
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
          widget: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$',
                  style: screenWidth < 350 && screenWidth > 319 ?  textS614:
                    screenWidth > 349 && screenWidth < 400 ?  textS614 :
                      screenWidth > 400 ? textS632B : textS614,
                ),
                Countup(
                  begin: 0,
                  end: 210,
                  duration: Duration(seconds: 2),
                  separator: ',',
                  style: screenWidth < 350 && screenWidth > 319 ?  textS614:
                    screenWidth > 350 && screenWidth < 400 ? textS616B :
                      screenWidth > 400 ? textS632B : textS614
                ),
              ],
            ),
          ),
        )
      ],
      series: <CircularSeries>[
        DoughnutSeries<GDPData, String>(
          radius: screenWidth < 350 && screenWidth > 320 ?  "50%" :
            screenWidth > 349 && screenWidth < 400 ?  "70%" :
              screenWidth > 399 ? "75%" : "57%",
          dataSource: _chartData,
          xValueMapper: (GDPData data, _) => data.continent,
          yValueMapper: (GDPData data, _) => data.gdp,
          dataLabelMapper: (GDPData data, _) => data.continent,
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelIntersectAction: LabelIntersectAction.none,
              labelPosition: ChartDataLabelPosition.outside,
              connectorLineSettings: ConnectorLineSettings(
                  // Type of the connector line
                  length: '10%',
                  type: ConnectorType.line),
              builder: (dynamic data, dynamic point, dynamic series,
                  int pointIndex, int seriesIndex) {
                return SizedBox(
                  height: 20,
                  width: 60,
                  child: Column(children: [
                    Text(
                      '2026 (2 cities)',
                      style: textS804G,
                    ),
                    Text(
                      '\$30',
                      style: textS806G,
                    ),
                  ]),
                );

                // return Text(
                //   '\$20 2026 (2 cities)',
                //   style: textS3,
                // );
              }),
          enableTooltip: true,
        )
      ],
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> data = [
      GDPData('oce', 60),
      GDPData('oce', 50),
      GDPData('S Ame', 50),
      GDPData('Asia', 50),
      GDPData('europ', 60),

    ];
    return data;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String? continent;
  final int? gdp;
}
