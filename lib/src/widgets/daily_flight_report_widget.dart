import 'package:flutter/material.dart';

class DailyFlightReport extends StatefulWidget {
  @override
  createState() {
    return DailyFlightReportState();
  }

}

class DailyFlightReportState extends State<DailyFlightReport> {
  bool _valueWeatherRecievedChecked = false;
  void _valueWeatherRecievedCheckedChanged(bool value) => setState(() => _valueWeatherRecievedChecked = value);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top:10.0, bottom:10.0),
      child: Column(
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1,
                    height: MediaQuery.of(context).size.height/14,
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(bottom: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black)),
                    ),
                    child: new Text('Daily Flight Report',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),

                      textAlign: TextAlign.center,
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1,
                    height: MediaQuery.of(context).size.height/14,
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.grey[100],
                      border: new Border(bottom: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black)),
                    ),
                    child: new Text('The following was conducted during the crew briefing:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),

                      textAlign: TextAlign.start,
                    ),
                  ),
                ]
            ),

            Row(
                children: [
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          padding: EdgeInsets.only(top: 10.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: Text('Weather Received & Checked',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          //padding: EdgeInsets.only(top: 12.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: new Checkbox(value: _valueWeatherRecievedChecked, onChanged: _valueWeatherRecievedCheckedChanged),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          padding: EdgeInsets.only(top: 10.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: Text('NOTAMS Received & Checked',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          //padding: EdgeInsets.only(top: 12.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: new Checkbox(value: _valueWeatherRecievedChecked, onChanged: _valueWeatherRecievedCheckedChanged),
                        )
                      ]
                  ),
                ]
            ),

            Row(
                children: [
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          padding: EdgeInsets.only(top: 10.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: Text('Documentation Received & Checked',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          //padding: EdgeInsets.only(top: 12.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: new Checkbox(value: _valueWeatherRecievedChecked, onChanged: _valueWeatherRecievedCheckedChanged),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          padding: EdgeInsets.only(top: 10.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: Text('2nd Pair of Corrective Lenses on Person',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          //padding: EdgeInsets.only(top: 12.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: new Checkbox(value: _valueWeatherRecievedChecked, onChanged: _valueWeatherRecievedCheckedChanged),
                        )
                      ]
                  ),
                ]
            ),

            Row(
                children: [
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          padding: EdgeInsets.only(top: 20.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: Text('Flight Briefing Done',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          //padding: EdgeInsets.only(top: 12.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                          ),
                          child: new Checkbox(value: _valueWeatherRecievedChecked, onChanged: _valueWeatherRecievedCheckedChanged),
                        )
                      ]
                  ),

                ]
            ),


          ]
      ),
    );
  }
}