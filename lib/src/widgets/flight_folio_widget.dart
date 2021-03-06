import 'package:flutter/material.dart';

flightFolioTrendMonitoringContainerFunction(context, headerValue) {
  return Column(children: [
    Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 22.0),
          decoration: new BoxDecoration(
            color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
//                bottom: BorderSide(color: Colors.black)
            ),
          ),
          child: Text(
            headerValue,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        )
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: new BoxDecoration(
            //color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                //bottom: BorderSide(color: Colors.black)
            ),
          ),
          child: new TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ''),
          ),
        )
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: new BoxDecoration(
            //color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                //bottom: BorderSide(color: Colors.black)
            ),
          ),
          child: new TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ''),
          ),
        )
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: new BoxDecoration(
            //color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                //bottom: BorderSide(color: Colors.black)
            ),
          ),
          child: new TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ''),
          ),
        )
      ]),
    ]),
  ]);
}

flightFolioTotalsAndMaintananceWidget(context, value) {
  return Column(children: [
    Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 14,
          //margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.only(top: 15.0),
          decoration: new BoxDecoration(
            color: Colors.blue[100],
            border: new Border(
              right: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          child: new Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 14,
          //margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: new BoxDecoration(
            border: new Border(
                right: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black)),
          ),
          child: new TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ''),
          ),
        ),
      ]),
    ]),
  ]);
}

flightFolioGridViewContainer(context, headerValueOne) {
  return Column(
    children: [
      Row(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 22.0),
          decoration: new BoxDecoration(
            color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                //bottom: BorderSide(color: Colors.black)
            ),
          ),
          child: Text(
            headerValueOne,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        )
      ]),
      Row(children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 12,
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: new BoxDecoration(
            //color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black)
            ),
          ),
          child:new TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ''),
          ),
        )
      ]),
    ],
  );
}

class Flight_Folio extends StatelessWidget {
  List<String> gridviewHeadingListOne = ['From', 'To', 'Off-Blck', 'Land'];

  List<String> gridviewHeadingListTwo = [
    'Cycle #1',
    'Cycle #2',
    'Landings',
    'Distance (NM)'
  ];

  List<String> gridviewHeadingListThree = [
    'Fuel Uplift',
    'Start Fuel (LB)',
    'Fuel',
    'Fuel Burn (LB)'
  ];

  List<String> gridviewHeadingListFour = [
    'Cargo (KG)',
    'Pax Amount',
    'Oil Uplift',
    ''
  ];

  List<String> trendMonitoringHeaders = [
    'ITT',
    'Torque',
    'Proper RPM',
    'N1',
    'Fuel Flow',
    'Oil Temp',
    'Oil Pres',
    'Gen Load',
    'ALT/FL',
    'OAT',
    'IAS',
    'Start ITT'
  ];

  List<String> flightTotalsBroughtForwardAndMaintenanceListOne = [
    'Flight Time',
    'Block Time',
    'Cycles #1',
    'Cycles #2',
    'Landings',
  ];

  List<String> flightTotalsBroughtForwardAndMaintenanceTwo = [
    'Inspection Due At', 'Next Inspection Type', 'Annual Due Date', '', ''];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        flightFolioMainHeader(context),
        flightFolioTotalsAndMaintenanceHeaders(context),
        flightFolioTotalsAndMaintenanceValues(context),
        Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: flightFolioGridView(context)),
        flightFolioTrendMonitoringHeader(context),
        flightFolioTrendMonitoring(context)
      ]),
    );
  }

  Widget flightFolioMainHeader(context) {
    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
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
                'Flight Folio',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'No.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                border: new Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black)),
              ),
              child: new Text(
                '',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ]));
  }

  Widget flightFolioTotalsAndMaintenanceHeaders(context) {
    return Container(
      child: Column(children: [
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black)),
              ),
              child: new Text(
                'Totals Brought Forward',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Column(children: [
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
                'Maintenance',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ]),
      ]),
    );
  }

  Widget flightFolioTotalsAndMaintenanceValues(context) {
    var flightFolioTotalsAndMaintenanceWidgetListOne = <Column>[];

    var flightFolioTotalsAndMaintenanceWidgetListTwo = <Column>[];

    flightTotalsBroughtForwardAndMaintenanceListOne.forEach((value) {
      flightFolioTotalsAndMaintenanceWidgetListOne
          .add(flightFolioTotalsAndMaintananceWidget(context, value));
    });
    flightTotalsBroughtForwardAndMaintenanceTwo.forEach((value) {
      flightFolioTotalsAndMaintenanceWidgetListTwo
          .add(flightFolioTotalsAndMaintananceWidget(context, value));
    });
    return Row(
      children: [
        Column(children: flightFolioTotalsAndMaintenanceWidgetListOne),
        Column( children:flightFolioTotalsAndMaintenanceWidgetListTwo),
      ],
    );
  }

  Widget flightFolioGridView(context) {
    var listOfFlightFolioGridViewWidgetsRow1 = <Column>[];

    var listOfFlightFolioGridViewWidgetsRow2 = <Column>[];

    var listOfFlightFolioGridViewWidgetsRow3 = <Column>[];

    var listOfFlightFolioGridViewWidgetsRow4 = <Column>[];

    gridviewHeadingListOne.forEach((value) {
      listOfFlightFolioGridViewWidgetsRow1
          .add(flightFolioGridViewContainer(context, value));
    });

    gridviewHeadingListTwo.forEach((value) {
      listOfFlightFolioGridViewWidgetsRow2
          .add(flightFolioGridViewContainer(context, value));
    });

    gridviewHeadingListThree.forEach((value) {
      listOfFlightFolioGridViewWidgetsRow3
          .add(flightFolioGridViewContainer(context, value));
    });

    gridviewHeadingListFour.forEach((value) {
      listOfFlightFolioGridViewWidgetsRow4
          .add(flightFolioGridViewContainer(context, value));
    });
    return Container(
      child: Column(children: [
        Row(children: listOfFlightFolioGridViewWidgetsRow1),
        Row(children: listOfFlightFolioGridViewWidgetsRow2),
        Row(children: listOfFlightFolioGridViewWidgetsRow3),
        Row(children: listOfFlightFolioGridViewWidgetsRow4),
      ]),
    );
  }

  Widget flightFolioTrendMonitoring(context) {
    var flightFolioTrendMonitoringHeaders = <Column>[];

    trendMonitoringHeaders.forEach((value) {
      flightFolioTrendMonitoringHeaders
          .add(flightFolioTrendMonitoringContainerFunction(context, value));
    });

    return Column(children: flightFolioTrendMonitoringHeaders);
  }

  Widget flightFolioTrendMonitoringHeader(context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: Row(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
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
                'Trend Monitoring',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ]));
  }
}
