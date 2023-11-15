// import 'package:flutter/material.dart';
// import 'package:login/atoms/Constant/constant.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:login/molecule/donut_chart.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class AllTravelsTopUp extends StatefulWidget {
//   const AllTravelsTopUp({super.key});
//
//   @override
//   State<AllTravelsTopUp> createState() => _AllTravelsTopUpState();
// }
//
// class _AllTravelsTopUpState extends State<AllTravelsTopUp> {
//   @override
//   Widget build(BuildContext context) {
//     final List<DataItem> dataSet = [
//       DataItem(value: 0.2, label: "Comedy", color: Colors.red),
//       DataItem(value: 0.25, label: "Action", color: Colors.brown),
//       DataItem(value: 0.3, label: "Romance", color: Colors.green),
//       DataItem(value: 0.05, label: "Drama", color: Colors.lime),
//       DataItem(value: 0.2, label: "SciFi", color: Colors.pink)
//     ];
//
//     final widgetsWidth = MediaQuery.of(context).size.width - 16;
//     return Container(
//       width: widgetsWidth,
//       height: 296,
//       // height: 496,
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(4),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Center(
//               child: Text(
//                 "This month's top-up for all travels",
//                 style: textS617B,
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: DonutChartWidget(dataSet),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ChartData {
//   ChartData(this.x, this.y, [this.color]);
//   final String x;
//   final double y;
//   final color;
// }
