import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'getdata.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle mys = TextStyle(
      fontSize: 35,
    );
    Fetchdata().getitem();
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Aara Company"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text("Amarjeet Kushwaha"),
                subtitle: Text("Devoloper"),
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "How's The Mood Today",
                          style: mys,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "😄",
                            style: mys,
                          ),
                          Text(
                            "😂 ",
                            style: mys,
                          ),
                          Text(
                            "😇",
                            style: mys,
                          ),
                          Text(
                            "☺️",
                            style: mys,
                          ),
                          Text(
                            "😍",
                            style: mys,
                          ),
                        ],
                      )
                    ],
                  ),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blueAccent,
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Text(
                      " Team Mood  ----------------------------------",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "The team is feellig Good",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            "today",
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                      Text(
                        "😇",
                        style: mys,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "😇  Moodalytics",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("(Trand chat on Mood)")
                  ],
                ),
              ),
              Container(
                  child: SfCartesianChart(
                      // Initialize category axis
                      primaryXAxis: CategoryAxis(),
                      series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        // Bind data source
                        dataSource: <SalesData>[
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('May', 40)
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales)
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
