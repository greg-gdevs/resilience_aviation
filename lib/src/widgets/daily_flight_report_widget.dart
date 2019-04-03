import 'package:flutter/material.dart';
import 'start_time_dropdown.dart';

class DailyFlightReport extends StatefulWidget {
  @override
  createState() {
    return DailyFlightReportState();
  }
}

class DailyFlightReportState extends State<DailyFlightReport> {
  bool _valueWeatherRecievedChecked = false;
  void _valueWeatherRecievedCheckedChanged(bool value) =>
      setState(() => _valueWeatherRecievedChecked = value);

  bool _valueNotamsRecievedChecked = false;
  void _valueNotamsRecievedCheckedChanged(bool value) =>
      setState(() => _valueNotamsRecievedChecked = value);

  bool _valueDocRecievedChecked = false;
  void _valueDocRecievedCheckedChanged(bool value) =>
      setState(() => _valueDocRecievedChecked = value);

  bool _valueFlightBriefing = false;
  void _valueFlightBriefingChanged(bool value) =>
      setState(() => _valueFlightBriefing = value);

  bool _valueSecondLenses = false;

  void _valueSecondLensesChanged(bool value) =>
      setState(() => _valueSecondLenses = value);

  bool _valueBraceCommand = false;
  void _valueBraceCommandChanged(bool value) =>
      setState(() => _valueBraceCommand = value);

  bool _valueEvacuationCommand = false;
  void _valueEvacuationCommandChanged(bool value) =>
      setState(() => _valueEvacuationCommand = value);

  bool _valueRoute = false;
  void _valueRouteChanged(bool value) => setState(() => _valueRoute = value);

  bool _valueWeather = false;
  void _valueWeatherChanged(bool value) =>
      setState(() => _valueWeather = value);

  bool _valueDelays = false;
  void _valueDelaysChanged(bool value) => setState(() => _valueDelays = value);

  bool _valueDiscreteCodeWord = false;
  void _valueDiscreteCodeWordChanged(bool value) =>
      setState(() => _valueDiscreteCodeWord = value);

  bool _valueFlyingTime = false;
  void _valueFlyingTimeChanged(bool value) =>
      setState(() => _valueFlyingTime = value);

  bool _valueKnownHazards = false;
  void _valueKnownHazardsChanged(bool value) =>
      setState(() => _valueKnownHazards = value);

  bool _valueOccurenceReport = false;
  void _valueOccurenceReportChanged(bool value) =>
      setState(() => _valueOccurenceReport = value);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 14,
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              'Daily Flight Report',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 14,
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            decoration: new BoxDecoration(
              color: Colors.grey[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              'The following was conducted during the crew briefing:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.start,
            ),
          ),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Weather Received & Checked',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueWeatherRecievedChecked,
                  onChanged: _valueWeatherRecievedCheckedChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'NOTAMS Received & Checked',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueNotamsRecievedChecked,
                  onChanged: _valueNotamsRecievedCheckedChanged),
            )
          ]),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Documentation Received & Checked',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueDocRecievedChecked,
                  onChanged: _valueDocRecievedCheckedChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                '2nd Pair of Corrective Lenses on Person',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueSecondLenses,
                  onChanged: _valueSecondLensesChanged),
            )
          ]),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Flight Briefing Done',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueFlightBriefing,
                  onChanged: _valueFlightBriefingChanged),
            )
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 14,
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            decoration: new BoxDecoration(
              color: Colors.grey[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              'The following was discussed during the crew briefing:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.start,
            ),
          ),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Brace Command',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueBraceCommand,
                  onChanged: _valueBraceCommandChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Evacuation Command',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueEvacuationCommand,
                  onChanged: _valueEvacuationCommandChanged),
            )
          ]),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Route',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueRoute, onChanged: _valueRouteChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Weather',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueWeather, onChanged: _valueWeatherChanged),
            )
          ]),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Delays',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueDelays, onChanged: _valueDelaysChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Discrete Code Word',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueDiscreteCodeWord,
                  onChanged: _valueDiscreteCodeWordChanged),
            )
          ]),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Flying Time',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueFlyingTime, onChanged: _valueFlyingTimeChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 20.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Known Hazards',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueKnownHazards,
                  onChanged: _valueKnownHazardsChanged),
            )
          ]),
        ]),
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(children: [
              Row(children: [
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Sign On',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 12.0, left: 10),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Enter time'),
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Sign Off',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 12.0, left: 10.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Enter time'),
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Split Duty',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 12.0, left: 10),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: ''),
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Sectors',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: ''),
                    ),
                  )
                ]),
              ]),
              Row(children: [
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Start Time',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(left: 3.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: StartTimeDropDown(),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Max Duty Time',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: ''),
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Occurence Report',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    //padding: EdgeInsets.only(top: 12.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new Checkbox(
                        value: _valueOccurenceReport,
                        onChanged: _valueOccurenceReportChanged),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      'Sign Off',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    padding: EdgeInsets.only(top: 12.0, left: 10.0),
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: ''),
                    ),
                  )
                ]),
              ]),
            ]),
          ),
        )
      ]),
    );
  }
}
