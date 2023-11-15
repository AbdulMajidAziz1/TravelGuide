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
    return SfCircularChart(
      title:
        ChartTitle(text: 'This month’s top-up for all travels',
          textStyle: textS616B
        ),
      series: <CircularSeries>[
        DoughnutSeries<GDPData, String>(
          dataSource: _chartData,
          xValueMapper: (GDPData data, _) => data.continent,
          yValueMapper: (GDPData data, _) => data.gdp,
            dataLabelMapper: (GDPData data, _) => data.continent,
            dataLabelSettings: DataLabelSettings(
                isVisible: true,
                labelIntersectAction: LabelIntersectAction.shift,
                labelPosition: ChartDataLabelPosition.outside,
                connectorLineSettings: ConnectorLineSettings(
                  // Type of the connector line
                    type: ConnectorType.curve
                ),
                builder: (dynamic data, dynamic point, dynamic series, int pointIndex, int seriesIndex) {
                  return Text('2026 (2 cities)',
                    style: textS3,
                  );
                }
            ),
          enableTooltip: true,
        )
      ],
    );
  }
  List<GDPData> getChartData() {
    final List<GDPData> data = [
      GDPData('oce', 30),
      GDPData('S Ame', 10),
      GDPData('Asia', 30),
      GDPData('europ', 70),
      GDPData('oce', 70),
    ];
    return data;
  }

}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String? continent;
  final int? gdp;
}