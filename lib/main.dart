import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percentindicator/linear_percent.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: SamplePage())));
}

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
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
      appBar: new AppBar(
        title: new Text("Circular Percent Indicators"),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          SizedBox(height: 16.0),
          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.8,
            header: new Text(
              "Icon header",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            center: new Icon(
              Icons.person_pin,
              size: 50.0,
              color: Colors.blue,
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
          SizedBox(height: 8.0),
          CircularPercentIndicator(
            radius: 130.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.4,
            center: new Text(
              "40 hours",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
          SizedBox(height: 8.0),
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: new Text(
              "70.0%",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            footer: new Text(
              "Sales this week",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: 1.0,
              center: new Text("100%"),
              progressColor: Colors.green,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(
                  builder: (context) => LinearPercentIndicatorPage());
              Navigator.push(context, route);
            },
            child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.blueAccent,
                color: Colors.blue,
                elevation: 7.0,
                child: Center(
                  child: Text(
                    'Linear Percent Indicator',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.0),
        ]),
      ),
    );
  }
}
