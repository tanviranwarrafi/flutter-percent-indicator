import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: LinearPercentIndicatorPage())));
}

class LinearPercentIndicatorPage extends StatefulWidget {
  @override
  _LinearPercentIndicatorPageState createState() =>
      _LinearPercentIndicatorPageState();
}

class _LinearPercentIndicatorPageState
    extends State<LinearPercentIndicatorPage> {
  _openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Percent Indicators"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 32.0),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.10,
                  center: new Text("10%"),
                  progressColor: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.30,
                  center: new Text("30%"),
                  progressColor: Colors.orange,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.60,
                  center: new Text("60%"),
                  progressColor: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("90%"),
                  progressColor: Colors.green,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: 140.0,
              lineHeight: 14.0,
              percent: 0.5,
              center: Text(
                "50.0%",
                style: new TextStyle(fontSize: 12.0),
              ),
              trailing: Icon(Icons.mood),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 20.0,
              leading: new Text("left content"),
              trailing: new Text("right content"),
              percent: 0.2,
              center: Text("20.0%"),
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              center: Text("80.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.2,
                  progressColor: Colors.red,
                ),
                SizedBox(height: 4.0),
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.5,
                  progressColor: Colors.orange,
                ),
                SizedBox(height: 4.0),
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.9,
                  progressColor: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
