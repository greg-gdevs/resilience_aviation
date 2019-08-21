import 'package:flutter/material.dart';
//import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'ControlBox.dart';
import 'PreFlightMenu.dart';
//import 'JSONUtil.dart';
//import 'dart:ui' as ui;
//import 'dart:convert';
import 'HomePage.dart';

class FlightAuthorityPage extends StatelessWidget {
  final PrimaryColor = const Color(0xFF28a9e0);

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Resilience_Aviation_Logo.jpg',
                fit: BoxFit.contain,
                height: 32,
              ),
            ]
        ),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },
              child: new Text('Home',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white))
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Center(
            child: Column(
                children: [
              flightAuthorityPageHeader(context),
              headers(context),
              facilitiesAndNotams(context),
              airCrew(context),
              flight(context),
              airCraftPerformance(context),
              //flightAuthoritySignature(context),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: submitButton(context),
                ),
              ]),

        ]),
          ),
        ],
      )
    );
  }

  Widget flightAuthorityPageHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          width: MediaQuery.of(context).size.width / 1,
          height: 50.0,
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            border: new Border(
//              bottom: BorderSide(color: Colors.black),
//              top: BorderSide(color: Colors.black),
            ),
          ),
          child: Center(
            child: Text(
              'Flight Authorisation & Self Release',
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 2.0,
            ),
          ),
        ),
      ]),
    ]);
  }

  Widget headers(context) {
    return Row(
        children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //top: BorderSide(color: Colors.black45),
                ),
              ),
              width: MediaQuery.of(context).size.width/1.167,
                height: 50.0,
                child: Center(
                child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 2.0,),
                ),
            ),
          ]
        ),
        Column(
          children:[
            Container(
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //top: BorderSide(color: Colors.black45),
                  left: BorderSide(color: Colors.black45),
                ),
              ),
              width: MediaQuery.of(context).size.width/7,
              height: 50.0,
              child: Center(
                child: Text('FOM Ref',
                style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 1.5,
               ),
              ),
            ),
          ]
        ),
      ]
    );
  }

  Widget facilitiesAndNotams(context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    decoration: new BoxDecoration(
                      color: PrimaryColor.withOpacity(0.6),
                      border: new Border(
                        //bottom: BorderSide(color: Colors.black45),
        //                    top: BorderSide(color: Colors.black),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/1,
                    height: 50.0,
                    child: Center(
                      child: Text(
                        'Facilities and Notams (REA-MAN-001 PART 1, SECTION 3, 1.1.9.4)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5),
                    ),
                  ),
                ]
            ),
          ]
        ),
        Row(
          children: [
            Row(
                children:[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          padding: EdgeInsets.only(left:10.0),
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border(
                              bottom: BorderSide(color: Colors.black45),
                              //top: BorderSide(color: Colors.black),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width/1.167,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              'Adequate communications and navigational facilities in satisfactory operating condition as necessary to cinduct flight safety',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          decoration: new BoxDecoration(
                            //color: Colors.blue[100],
                            border: new Border(
                              bottom: BorderSide(color: Colors.black45),
                              //top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black45),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width/7,
                          height: 50.0,
                          child: Center(
                            child: Text('B) 1',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor:1.5,
                            ),
                          ),
                        ),
                      ]
                  ),
                ]
            ),


          ],
        ),

        Row(
            children:[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/1.167,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Adequate time for flight preparation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black45),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      height: 50.0,
                      child: Center(
                        child: Text('B) 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:1.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
        Row(
            children:[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/1.167,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Adequate information for flight planning',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black45),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      height: 50.0,
                      child: Center(
                        child: Text('B) 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:1.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
        Row(
            children:[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/1.167,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Weather briefing, if available',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black45),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      height: 50.0,
                      child: Center(
                        child: Text('C) 1 & 2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:1.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
        Row(
            children:[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          //bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/1.167,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Serviceability of departure and destination airfields checked, NOTAMS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          //bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black45),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      height: 50.0,
                      child: Center(
                        child: Text('B) 2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:1.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
      ]
    );

  }

  Widget airCrew(context) {
    return Column(
        children: [
          Row(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45 ),
                            //                    top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Aircrew (REA-MAN-001)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 2.0,),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
            children: [
              Row(
                  children:[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/1.167,
                            height: 50.0,
                            child: Center(
                              child: Text(
                                ' Adequate Crew Rest',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black45),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/7,
                            height: 50.0,
                            child: Center(
                              child: Text('Part 1 Sec 9',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor:1.0,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ]
              ),


            ],
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0), decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Crew approved by client, license valid and crew recent with 3 take offs and landing either during day, night and in IMC as required for the mission to be flown.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        padding: EdgeInsets.only(left:10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('Part 1 Sec 6 1.2.3',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),

          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black),
                        ),
                      ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Crew familiar with route, terrain, approaches, etc maps annotated properly',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        padding: EdgeInsets.only(left:10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('Part 1 Sec 6 1.2.3',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Review Crew workloads last 30 days',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        padding: EdgeInsets.only(left:10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('Part 1 Sec 3 1.1.9.4',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
        ]
    );

  }

  Widget flight(context) {
    return Column(
        children: [
          Row(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //                    top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Flight (REA-MAN-001 PART 1, SECTION 3, 1.1.9.4)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 2.0,),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
            children: [
              Row(
                  children:[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right:10.0),
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/1.167,
                            height: 50.0,
                            child: Center(
                              child: Text(
                                'Fuel supply specified in the release is equivalent to or greater than the minimum flight planning requirments, includinganticipated contingincies.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black45),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/7,
                            height: 50.0,
                            child: Center(
                              child: Text('F) 1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor:1.5,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ]
              ),

            ],
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Complies with crews Civil Aviation Authority and Company limitations',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('SACAR & SACATS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),

          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Appropriate clearances obtained, and flight plan filled',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('J)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1.5,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
        ]
    );
  }

  Widget airCraftPerformance(context) {
    return Column(
        children: [
          Row(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black),
                            //                    top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Aircraft/ Performance (REA-MAN-001 PART 1, SECTION 3, 1.1.9.4)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 1.5,),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
            children: [
              Row(
                  children:[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/1.167,
                            height: 50.0,
                            child: Center(
                              child: Text(
                                'Aircraft loading anticipated and certain that the proposed operation will not exceed the Center of gravity limits, Aircraft operating limitations, Minimum performance requirments, Loading Stowing and Securing',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(
                                bottom: BorderSide(color: Colors.black45),
                                //top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black45),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width/7,
                            height: 50.0,
                            child: Center(
                              child: Text('G) 1-4',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor:1.5,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ]
              )
            ],
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Flight planned within the aircraft and aircrew's saftety parameters based upon temp, pressure, weather conditions, MTOW etc.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('G) 1-4',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1.5,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Aircraft is airworthy and properly equipped for the intended flight operations',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1.5,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Status of maintenace deficiencies checked',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('A) 2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1.5,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/1.167,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'All instruments and equipment installed are operative, except as specified in the Minimum Equipment List',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width/7,
                        height: 50.0,
                        child: Center(
                          child: Text('2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:1.5,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
        ]
    );
  }

  Widget submitButton(context) {

    return Row(
        children: [
          Center(
            child: RaisedButton(
                child: Container(
                  width: 200.0,
                  height: 50.0,
                  child: Center(
                    child: new Text('SUBMIT',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                onPressed: () {
                  //securityChecklistMap = widget.multiSelect;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PreflightMenu()),
                  );
                  var flightAuthorityMap = new Map<String, dynamic>();
                  //flightAuthorityMap['pic_name'];
                  //flightAuthorityMap['fo_name'];

                  flightAuthorityMap['Accept'] = true;
                  var controlBox = new ControlBox();
                  controlBox.saveData(flightAuthorityMap, 'flight authority');
                  //controlBox.saveToDB();
                  //saveSignature();
                }),
          ),
        ]
    );
  }
}
