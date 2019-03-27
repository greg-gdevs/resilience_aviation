import 'package:flutter/material.dart';

class PreFlightSecurityChecklist extends StatefulWidget {
  @override
  createState() {
    return PreFlightSecurityChecklistState();
  }
}

class PreFlightSecurityChecklistState
    extends State<PreFlightSecurityChecklist> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(children: [
        Row(children: [
          preFlightSecurityChecklistHeading(context),
        ]),
        Row(children: [
          preflightSecurityChecklistCheckList(context),
        ]),
      ]),
    );
  }

  bool _valueFuselage = false;
  void _valueFuselageChanged(bool value) =>
      setState(() => _valueFuselage = value);

  bool _valueInspectFuselage = false;
  void _valueInspectFuselageChanged(bool value) =>
      setState(() => _valueInspectFuselage = value);

  bool _valueFuselageOtherLocations = false;
  void _valueFuselageOtherLocationsChanged(bool value) =>
      setState(() => _valueFuselageOtherLocations = value);

  bool _valueWings = false;
  void _valueWingsChanged(bool value) =>
      setState(() => _valueFuselageOtherLocations = value);

  bool _valueWingsAndRearSpar = false;
  void _valueWingsAndRearSparChanged(bool value) =>
      setState(() => _valueWingsAndRearSpar = value);

  bool _valueTrailingEdgeFlaps = false;
  void _valueTrailingEdgeFlapsChanged(bool value) =>
      setState(() => _valueTrailingEdgeFlaps = value);

  bool _valueAileronsAndHinges = false;
  void _valueAileronsAndHingesChanged(bool value) =>
      setState(() => _valueAileronsAndHinges = value);

  bool _valueFuelingStations = false;
  void _valueFuelingStationsChanged(bool value) =>
      setState(() => _valueFuelingStations = value);

  bool _valueLandingGear = false;
  void _valueLandingGearChanged(bool value) =>
      setState(() => _valueLandingGear = value);

  bool _valueWheelsAndBrakes = false;
  void _valueWheelsAndBrakesChanged(bool value) =>
      setState(() => _valueWheelsAndBrakes = value);

  bool _valueHydraulicInstallations = false;
  void _valueHydraulicInstallationsChanged(bool value) =>
      setState(() => _valueHydraulicInstallations = value);

  bool _valueWheelWellDoorsAndMechanism = false;
  void _valueWheelWellDoorsAndMechanismChanged(bool value) =>
      setState(() => _valueWheelWellDoorsAndMechanism = value);

  bool _valueEngines = false;
  void _valueEnginesChanged(bool value) =>
      setState(() => _valueEngines = value);

  bool _valueInlet = false;
  void _valueInletChanged(bool value) =>
      setState(() => _valueInlet = value);

  bool _valueExhaust = false;
  void _valueExhaustChanged(bool value) =>
      setState(() => _valueExhaust = value);

  bool _valueEmpennage = false;
  void _valueEmpennageChanged(bool value) =>
      setState(() => _valueEmpennage = value);

  bool _valueHorizontalStabilizerAndElevatorMechanism = false;
  void _valueHorizontalStabilizerAndElevatorMechanismChanged(bool value) =>
      setState(() => _valueHorizontalStabilizerAndElevatorMechanism = value);

  bool _valueVerticalRudderStabiliserAndRudderMechanism = false;
  void _valueVerticalRudderStabiliserAndRudderMechanismChanged(bool value) =>
      setState(() => _valueVerticalRudderStabiliserAndRudderMechanism = value);

  Widget preFlightSecurityChecklistHeading(BuildContext context) {
    return new Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
          'Pre-Flight Security Checklist',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }

  Widget preflightSecurityChecklistCheckList(BuildContext context) {
    return new Container(
      child: Column(children: [
        //Heading
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Items',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Checked',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Remark',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(),
        ]),

        //Fuselage
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Fuselage',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueFuselage, onChanged: _valueFuselageChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //right: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Inspect Belly fromGround',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueInspectFuselage,
                  onChanged: _valueInspectFuselageChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Other Locations',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueFuselageOtherLocations,
                  onChanged: _valueFuselageOtherLocationsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        //Wings
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Wings',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueWings, onChanged: _valueWingsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Wings and Rear Spar',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueWingsAndRearSpar,
                  onChanged: _valueWingsAndRearSparChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Trailing Edge Flaps',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueTrailingEdgeFlaps,
                  onChanged: _valueTrailingEdgeFlapsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Ailerons and Hinges',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueAileronsAndHinges,
                  onChanged: _valueAileronsAndHingesChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Fueling Stations',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueFuelingStations,
                  onChanged: _valueFuelingStationsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Landing Gear',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueLandingGear,
                  onChanged: _valueLandingGearChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Wheels and Brakes',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueHydraulicInstallations,
                  onChanged: _valueHydraulicInstallationsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Hydraulic Installations',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueHydraulicInstallations,
                  onChanged: _valueHydraulicInstallationsChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Wheel Well Doors & Mechanism',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueWheelWellDoorsAndMechanism,
                  onChanged: _valueWheelWellDoorsAndMechanismChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        //Engines

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Engines',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueEngines, onChanged: _valueEnginesChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Inlet',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueInlet, onChanged: _valueInletChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Exhaust',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueExhaust, onChanged: _valueExhaustChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 15.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Empennage',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueEmpennage, onChanged: _valueEmpennageChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 5.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Horizontal Stabilizer & Elevator Mechanism',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueHorizontalStabilizerAndElevatorMechanism, onChanged: _valueHorizontalStabilizerAndElevatorMechanismChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 5.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'Vertical Rudder Stabiliser and Rudder Mechanism',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: _valueVerticalRudderStabiliserAndRudderMechanism, onChanged: _valueVerticalRudderStabiliserAndRudderMechanismChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              padding: EdgeInsets.only(top: 6.0, left: 20.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //left: BorderSide(color: Colors.black),
                ),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Remark',
                ),
              ),
            )
          ]),
          Column(),
        ]),


      ]),
    );
  }
}
