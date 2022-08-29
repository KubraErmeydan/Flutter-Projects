import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Invest extends StatefulWidget {
  const Invest({Key? key}) : super(key: key);

  @override
  State<Invest> createState() => _InvestState();
}

class _InvestState extends State<Invest> {
  late List<Data> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff070619),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Yatırım çeşitlerinin TL olarak gösterimi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SfCircularChart(
                  legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                  ),
                  series: <CircularSeries>[
                    PieSeries<Data, String>(
                        dataSource: _chartData,
                        xValueMapper: (Data data, _) => data.tur,
                        yValueMapper: (Data data, _) => data.doviz,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true))
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Bu Yıl Kazanç Artışı',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircularPercentIndicator(
                      radius: 90,
                      lineWidth: 20,
                      progressColor: const Color.fromARGB(255, 39, 118, 42),
                      percent: 0.65,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      animationDuration: 2000,
                      center: const Text(
                        '%65',
                        style:
                            TextStyle(color: Colors.lightGreen, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LinearPercentIndicator(
                  lineHeight: 15,
                  percent: 0.8,
                  progressColor: Colors.deepOrange,
                  backgroundColor: Colors.deepOrange.shade100,
                  animation: true,
                  animationDuration: 1500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Data> getChartData() {
    final List<Data> chartData = [
      Data('USD', (200 * 18)),
      Data('EUR', (150 * 19)),
      Data('XAU', (5 * 1000)),
    ];
    return chartData;
  }
}

class Data {
  Data(this.tur, this.doviz);
  final String tur;
  final int doviz;
}
