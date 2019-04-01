import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/logo_widget.dart';
import '../widgets/crew_route_info.dart';
import '../widgets/flight_checklist_dropdown.dart';
import '../widgets/daily_flight_report_widget.dart';
import '../widgets/captain_crew_report_widget.dart';
import '../widgets/pre_flight_security_checklist_widget.dart';
import '../widgets/electrical_equipment_compartments_widget.dart';
import '../widgets/flight_folio_widget.dart';
import '../widgets/loop_test_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
//const logo
  //HomeScreenState(this.logo)
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListView(children: [
        Logo(),
        flightDetails(),
        CrewRouteInfo(),
        ninetyDayRecordCheck(),
        //NinetyDayRecordChecklist(),
        FlightCheckList(),
        DailyFlightReport(),
        CaptainCrewReport(),
        PreFlightSecurityChecklist(),
        ElectricalEquipmentCompartments(),
        Flight_Folio(),
      ]),
    );
  }

  Widget flightDetails() {
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            //margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              'Flight Details',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Column(children: [
          Container(
            //constraints:  BoxConstraints(maxWidth: 300.0),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 6.0, left: 30.0),
            decoration: new BoxDecoration(
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Input Flight Details'),
            ),
          ),
        ]),
      ]),
    );
  }

  Widget ninetyDayRecordCheck() {
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(children: [
        //90 Day Record Check
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            //constraints:  BoxConstraints(maxWidth: 300.0),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              '90 Day Record Check',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Column(children: [
          Container(
            //constraints:  BoxConstraints(maxWidth: 300.0),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 20.0),
            decoration: new BoxDecoration(
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black)),
            ),
            child: Text(
              '90 Day Record Check  Input',
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ]),
    );
  }
}
