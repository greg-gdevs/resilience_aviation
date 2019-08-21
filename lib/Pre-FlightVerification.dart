import 'package:flutter/material.dart';
import 'HomePage.dart';
//import 'PreFlightMenu.dart';
import 'JSONUtil.dart';
import 'ControlBox.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'widgets/DatePickerWidget.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'SharedPrefs.dart';
import 'dart:ui' as ui;
import 'dart:convert';
//import 'ControlBox.dart';

class PreFlightVerificationPage extends StatefulWidget {
  @override
  createState() {
    return PreFlightVerificationPageState();
  }
}

class PreFlightVerificationPageState extends State<PreFlightVerificationPage> {
  var cb = new ControlBox();
  var sp = new sharedPrefs();

  @override
  void initState() {
    selectedDate = DateTime.now();
    dateSelected = selectedDate.toString().split(' ')[0];
    selectedCaptains = '';
    selectedFirstOfficers = '';
    selectedClient = '';
    reload = false;
  }
  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    fd_task.dispose();
    super.dispose();
  }


  DateTime selectedDate;
  var dateSelected;

  String selectedCaptains;

  String selectedFirstOfficers;

  String selectedClient;

  var reload;

  var taskText;

  @override
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
      body: Container(
        child: ListView(
          children: [
            Column(children: [
              preFlightVerificationPageHeader(context),
              Container(margin: EdgeInsets.only(top:20.0),
                decoration: new BoxDecoration(
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              preFlightVerificationClientCaptainTask(context),
              Container(margin: EdgeInsets.only(top:20.0)),
              preFlightReportRequiredDocumentsCheckBoxListHeader(),
              preFlightReportRequiredDocumentsCheckBoxList(context),
              //submittedToOperations(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10.0),
                        child: submitButton()
                    ),
                  ]
              ),
            ]
            ),
          ],
        ),
      ),
    );
  }

  Widget preFlightVerificationPageHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1,
          height: 50.0,
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            border: new Border(
            ),
          ),
          child: Center(
            child: Text(
              'Pre - Flight Verification',
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor:2.0,
            ),
          ),
        ),
      ]),
    ]);
  }

  final fd_task= TextEditingController();
  var PrimaryColor = const Color(0xFF28a9e0);

  Widget futureTaskText(context) {
    return new FutureBuilder(
        future: cb.readData('pre-flight verification'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            fd_task.text = jvalue['task'];
          }else if (taskText != ''){
            fd_task.text = taskText;
          }else{
            fd_task.text = '';
          }
          return new TextField(
            controller: fd_task,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Task',
            ),
            onChanged: (text){
              taskText = text;
            },

          );
        });
  }

  Widget futureWidgetFirstOfficer(context) {
    return new FutureBuilder(
      future: sp.getPrefs('Pilot'),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        var testval;
        List<DropdownMenuItem<String>> valueList = [];
        if (snapshot.hasData && snapshot.data != null) {
          var myJson = json.decode(snapshot.data);
          var dataList = myJson['data'];
          for(var listValue in dataList) {
            valueList.add(new DropdownMenuItem(child: new Text(listValue),value: listValue,));
          }

          for (var ddentry in valueList){
            if (selectedFirstOfficers != ''){
              if(ddentry.value == selectedFirstOfficers){
                testval = ddentry.value;
              }
            }else if (ddentry.value == myJson['SelectedFO'] && myJson['SelectedFO'] != ''){
              testval = ddentry.value;
              selectedFirstOfficers = ddentry.value;
            }
          }

        }
        return new DropdownButton(
          //snapshot.data.toString(),
          hint: Text('Select'),
          value: testval ,
          onChanged: (newValue) {
            setState(() {
              print('newval:' + newValue);
              selectedFirstOfficers = newValue;
            });
          },
          items: valueList,
        );
      },
    );
  }

  Widget futureWidgetCaptains(context) {
    return new FutureBuilder(
      future: sp.getPrefs('Pilot'),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        var testval;
        List<DropdownMenuItem<String>> valueList = [];
        if (snapshot.hasData && snapshot.data != null) {
          var myJson = json.decode(snapshot.data);
          var dataList = myJson['data'];
          for(var listValue in dataList) {
            valueList.add(new DropdownMenuItem(child: new Text(listValue),value: listValue,));
          }

          for (var ddentry in valueList){
            if (selectedCaptains != ''){
              if(ddentry.value == selectedCaptains){
                testval = ddentry.value;
              }
            }else if (ddentry.value == myJson['SelectedCaptain'] && myJson['SelectedCaptain'] != ''){
              testval = ddentry.value;
              selectedCaptains = ddentry.value;
            }
          }
        }
        return new DropdownButton(
          //snapshot.data.toString(),
          hint: Text('Select'),
          value: testval,
          onChanged: (newValue) {
            setState(() {
              print('newval:' + newValue);
              selectedCaptains = newValue;
            });
          },
          items: valueList,
        );
      },
    );
  }

  Widget futureWidgetClient(context) {
    return new FutureBuilder(
      future: sp.getPrefs('Client'),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        var testval;
        List<DropdownMenuItem<String>> valueList = [];
        if (snapshot.hasData && snapshot.data != null) {
          var myJson = json.decode(snapshot.data);
          var dataList = myJson['data'];
          for(var listValue in dataList) {
            valueList.add(new DropdownMenuItem(child: new Text(listValue),value: listValue,));
          }

          for (var ddentry in valueList){
            if (selectedClient != ''){
              if(ddentry.value == selectedClient){
                testval = ddentry.value;
              }
            }else if (ddentry.value == myJson['Selected'] && myJson['Selected'] != ''){
              testval = ddentry.value;
              selectedClient = ddentry.value;
            }
          }

        }
        return new DropdownButton(
          //snapshot.data.toString(),
          hint: Text('Select'),
          value: testval ,
          onChanged: (newValue) {
            setState(() {
              print('newval:' + newValue);
              selectedClient = newValue;
            });
          },
          items: valueList,
        );
      },
    );
  }

  Widget preFlightVerificationClientCaptainTask(context) {
    return Column(
        children:[
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        padding: EdgeInsets.only(left: 10.0, top: 7.0),
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child: Text('Client:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:2.0,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                        height: 50.0,
                        padding: EdgeInsets.only(left: 10.0),

                        decoration: new BoxDecoration(
                          border: new Border(
                           bottom: BorderSide(color: Colors.black45),
                            top: BorderSide(color: Colors.black45),
                            //left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child:new Container(
                          //width: 20.0,
                          child:new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Center(
                                child: futureWidgetClient(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            //left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child: Center(
                          child: Text('Captain:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor:2.0,

                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 50.0,
                        padding: EdgeInsets.only(left:10.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            top: BorderSide(color: Colors.black45),
                            //left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child: new Container(
                          //width: 20.0,
                          child:new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Center(
                                child: futureWidgetCaptains(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        padding: EdgeInsets.only(left: 10.0, top: 7.0),
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black),
                            //top: BorderSide(color: Colors.black),
                            //left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child: Text('Task:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:2.0,

                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 50.0,
                        padding: EdgeInsets.only(left:10.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            //left: BorderSide(color: Colors.black45),
                          ),
                        ),
                        child: Center(
                          child: futureTaskText(context),
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        padding: EdgeInsets.only(left: 10.0, top: 7.0),
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: PrimaryColor.withOpacity(0.6),
                          border: new Border(
                            //bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black),
                            //left: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text('First Officer:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor:2.0,

                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            border: new Border(
                              bottom: BorderSide(color: Colors.black45),
                              //top: BorderSide(color: Colors.black),
                              //left: BorderSide(color: Colors.black),
                            ),
                          ),

                          child: new Container(
                            //width: 20.0,
                            child:new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Center(
                                  child: futureWidgetFirstOfficer(context),
                                ),
                              ],
                            ),
                          )
                      ),
                    ]
                ),
              ]
          ),
        ]
    );
  }

  Widget preFlightReportRequiredDocumentsCheckBox(context,String no, String title, incBoolValue, notIncBoolValue, notAppBoolValue) {
    return Row(
        children: [
          Column(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 6,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 14,
              padding: EdgeInsets.only(left: 15.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: new Text(
                  no,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  //textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 14,
              padding: EdgeInsets.only(left: 15.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: new Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  //textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 6,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 14,
              padding: EdgeInsets.only(top: 3.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  right: BorderSide(color: Colors.black45),
                ),
              ),
              child: new Checkbox(
                  value: incBoolValue,
                  onChanged: (bool value) {
                    setState(() {
                      switch (title) {
                        case 'Daily Flight Report (REA-FOR-OM-002)':
                          dailyFlightReportInc = value;
                          break;
                        case 'Resilience Flight Folio':
                          resilienceFlightFolioInc = value;
                          break;
                        case 'Weight & Balance Sheet':
                          weightAndBalanceSheetInc = value;
                          break;
                        case 'Operational Flight Plan & Told Cards':
                          operationalFlightPlanAndToldCardsInc = value;
                          break;
                        case 'Passenger Manifest':
                          passengerManifestInc = value;
                          break;
                        case 'Cargo Manifest':
                          cargoManifestInc = value;
                          break;
                        case 'NOTOC':
                          notocInc = value;
                          break;
                        case 'General Declaration':
                          generalDeclarationInc = value;
                          break;
                        case 'Fuel Uplift Receipts':
                          fuelUpliftReceiptsInc = value;
                          break;
                        case 'Pre-Flight Security Checklist':
                          preflightSecurityChecklistInc = value;
                          break;
                        case 'Weather for Routing':
                          weatherForRoutingInc = value;
                          break;
                        case 'NOTAMS':
                          notamsInc = value;
                          break;
                        case 'Flight Authorisation and Self - Release':
                          flightAuthorisationAndSelfReleaseInc = value;
                          break;
                      }
                      reload = true;
                    });
                  }),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 6,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 14,
              padding: EdgeInsets.only(top: 3.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  right: BorderSide(color: Colors.black45),
                ),
              ),
              child: new Checkbox(
                  value: notIncBoolValue,
                  onChanged: (bool value) {
                    setState(() {
                      switch (title) {
                        case 'Daily Flight Report (REA-FOR-OM-002)':
                          dailyFlightReportNotInc = value;
                          break;
                        case 'Resilience Flight Folio':
                          resilienceFlightFolioNotInc = value;
                          break;
                        case 'Weight & Balance Sheet':
                          weightAndBalanceSheetNotInc = value;
                          break;
                        case 'Operational Flight Plan & Told Cards':
                          operationalFlightPlanAndToldCardsNotInc = value;
                          break;
                        case 'Passenger Manifest':
                          passengerManifestNotInc = value;
                          break;
                        case 'Cargo Manifest':
                          cargoManifestNotInc = value;
                          break;
                        case 'NOTOC':
                          notocNotInc = value;
                          break;
                        case 'General Declaration':
                          generalDeclarationNotInc = value;
                          break;
                        case 'Fuel Uplift Receipts':
                          fuelUpliftReceiptsNotInc = value;
                          break;
                        case 'Pre-Flight Security Checklist':
                          preflightSecurityChecklistNotInc = value;
                          break;
                        case 'Weather for Routing':
                          weatherForRoutingNotInc = value;
                          break;
                        case 'NOTAMS':
                          notamsNotInc = value;
                          break;
                        case 'Flight Authorisation and Self - Release':
                          flightAuthorisationAndSelfReleaseNotInc = value;
                          break;
                      }
                      reload = true;
                    });
                  }),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 6,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 14,
              padding: EdgeInsets.only(top: 3.0, right: 2.0),
              decoration: new BoxDecoration(
                //color: Colors.grey[300],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black),
                ),
              ),
              child: new Checkbox(
                  value: notAppBoolValue,
                  onChanged: (bool value) {
                    setState(() {
                      switch (title) {
                        case 'Daily Flight Report (REA-FOR-OM-002)':
                          dailyFlightReportNotApp = value;
                          break;
                        case 'Resilience Flight Folio':
                          resilienceFlightFolioNotApp = value;
                          break;
                        case 'Weight & Balance Sheet':
                          weightAndBalanceSheetNotApp = value;
                          break;
                        case 'Operational Flight Plan & Told Cards':
                          operationalFlightPlanAndToldCardsNotApp = value;
                          break;
                        case 'Passenger Manifest':
                          passengerManifestNotApp = value;
                          break;
                        case 'Cargo Manifest':
                          cargoManifestNotApp = value;
                          break;
                        case 'NOTOC':
                          notocNotApp = value;
                          break;
                        case 'General Declaration':
                          generalDeclarationNotApp = value;
                          break;
                        case 'Fuel Uplift Receipts':
                          fuelUpliftReceiptsNotApp = value;
                          break;
                        case 'Pre-Flight Security Checklist':
                          preflightSecurityChecklistNotApp = value;
                          break;
                        case 'Weather for Routing':
                          weatherForRoutingNotApp = value;
                          break;
                        case 'NOTAMS':
                          notamsNotApp = value;
                          break;
                        case 'Flight Authorisation and Self - Release':
                          flightAuthorisationAndSelfReleaseNotApp = value;
                          break;
                      }
                      reload = true;
                    });
                  }),
            ),
          ]),
        ]
    );
  }

  //Daily Flight Report
  bool dailyFlightReportInc = false;
  bool dailyFlightReportNotInc = false;
  bool dailyFlightReportNotApp = false;

  //Resilience Flight Folio

  bool resilienceFlightFolioInc = false;
  bool resilienceFlightFolioNotInc = false;
  bool resilienceFlightFolioNotApp = false;

  //Weight And BalanceSheet

  bool weightAndBalanceSheetInc = false;
  bool weightAndBalanceSheetNotInc = false;
  bool weightAndBalanceSheetNotApp = false;

  //Operational Flight Plan & Told Cards

  bool operationalFlightPlanAndToldCardsInc = false;
  bool operationalFlightPlanAndToldCardsNotInc = false;
  bool operationalFlightPlanAndToldCardsNotApp = false;

  //Passenger Manifest
  bool passengerManifestInc = false;
  bool passengerManifestNotInc = false;
  bool passengerManifestNotApp = false;

  //Cargo Manifest

  bool cargoManifestInc = false;
  bool cargoManifestNotInc = false;
  bool cargoManifestNotApp = false;

  //NOTOC

  bool notocInc = false;
  bool notocNotInc = false;
  bool notocNotApp = false;

  //General Declaration

  bool generalDeclarationInc = false;
  bool generalDeclarationNotInc = false;
  bool generalDeclarationNotApp = false;

  //Fuel Uplift Receipts

  bool fuelUpliftReceiptsInc = false;
  bool fuelUpliftReceiptsNotInc = false;
  bool fuelUpliftReceiptsNotApp = false;

  //Pre-Flight Security Checklist
  bool preflightSecurityChecklistInc = false;
  bool preflightSecurityChecklistNotInc = false;
  bool preflightSecurityChecklistNotApp = false;

  //Weather For Routing

  bool weatherForRoutingInc = false;
  bool weatherForRoutingNotInc = false;
  bool weatherForRoutingNotApp = false;

  //Notams

  bool notamsInc = false;
  bool notamsNotInc = false;
  bool notamsNotApp = false;

  //Flight Authorisation & Self Release

  bool flightAuthorisationAndSelfReleaseInc = false;
  bool flightAuthorisationAndSelfReleaseNotInc = false;
  bool flightAuthorisationAndSelfReleaseNotApp = false;

  Widget preFlightReportRequiredDocumentsCheckBoxList(context) {
    return FutureBuilder(
        future: cb.readData('pre-flight verification'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData && snapshot.data != null && reload == false) {
            var jvalue = snapshot.data;
            dailyFlightReportInc = jvalue['daily_flight_report_inc'];
            dailyFlightReportNotInc = jvalue['daily_flight_report_not_inc'];
            dailyFlightReportNotApp = jvalue['daily_flight_report_not_app'];

            resilienceFlightFolioInc = jvalue['resillience_flight_folio_inc'];
            resilienceFlightFolioNotInc = jvalue['resillience_flight_folio_not_inc'];
            resilienceFlightFolioNotApp = jvalue['resillience_flight_folio_not_app'];

            weightAndBalanceSheetInc = jvalue['weight_and_balance_sheet_inc'];
            weightAndBalanceSheetNotInc = jvalue['weight_and_balance_sheet_not_inc'];
            weightAndBalanceSheetNotApp = jvalue['weight_and_balance_sheet_not_app'];

            operationalFlightPlanAndToldCardsInc = jvalue['operational_flight_plan_and_told_cards_inc'];
            operationalFlightPlanAndToldCardsNotInc = jvalue['operational_flight_plan_and_told_cards_not_inc'];
            operationalFlightPlanAndToldCardsNotApp = jvalue['operational_flight_plan_and_told_cards_not_app'];

            passengerManifestInc = jvalue['passenger_manifest_inc'];
            passengerManifestNotInc = jvalue['passenger_manifest_not_inc'];
            passengerManifestNotApp = jvalue['passenger_manifest_not_app'];

            cargoManifestInc = jvalue['cargo_manifest_inc'];
            cargoManifestNotInc = jvalue['cargo_manifest_not_inc'];
            cargoManifestNotApp = jvalue['cargo_manifest_not_app'];

            notocInc = jvalue['notoc_inc'];
            notocNotInc = jvalue['notoc_not_inc'];
            notocNotApp = jvalue['notoc_not_app'];

            generalDeclarationInc = jvalue['general_declaration_inc'];
            generalDeclarationNotInc = jvalue['general_declaration_not_inc'];
            generalDeclarationNotApp = jvalue['general_declaration_not_app'];

            fuelUpliftReceiptsInc = jvalue['fuel_uplift_receipts_inc'];
            fuelUpliftReceiptsNotInc = jvalue['fuel_uplift_receipts_not_inc'];
            fuelUpliftReceiptsNotApp = jvalue['fuel_uplift_receipts_not_app'];

            preflightSecurityChecklistInc = jvalue['fuel_uplift_receipts_inc'];
            preflightSecurityChecklistNotInc = jvalue['fuel_uplift_receipts_not_inc'];
            preflightSecurityChecklistNotApp = jvalue['fuel_uplift_receipts_not_app'];

            notamsInc = jvalue['notams_inc'];
            notamsNotInc = jvalue['notams_not_inc'];
            notamsNotApp = jvalue['notams_not_app'];

            flightAuthorisationAndSelfReleaseInc = jvalue['flight_authorisation_and_self_release_inc'];
            flightAuthorisationAndSelfReleaseNotInc = jvalue['flight_authorisation_and_self_release_not_inc'];
            flightAuthorisationAndSelfReleaseNotApp = jvalue['flight_authorisation_and_self_release_not_app'];

          }

          return Container(

              child: Column(
                  children: [
                    preFlightReportRequiredDocumentsCheckBox(context, '1', 'Daily Flight Report (REA-FOR-OM-002)', dailyFlightReportInc, dailyFlightReportNotInc,dailyFlightReportNotApp ),
                    preFlightReportRequiredDocumentsCheckBox(context, '2', 'Resilience Flight Folio', resilienceFlightFolioInc, resilienceFlightFolioNotInc,resilienceFlightFolioNotApp  ),
                    preFlightReportRequiredDocumentsCheckBox(context, '3', 'Weight & Balance Sheet', weightAndBalanceSheetInc, weightAndBalanceSheetNotInc,weightAndBalanceSheetNotApp  ),
                    preFlightReportRequiredDocumentsCheckBox(context, '4', 'Operational Flight Plan & Told Cards', operationalFlightPlanAndToldCardsInc, operationalFlightPlanAndToldCardsNotInc,operationalFlightPlanAndToldCardsNotApp  ),
                    preFlightReportRequiredDocumentsCheckBox(context, '5', 'Passenger Manifest', passengerManifestInc, passengerManifestNotInc,passengerManifestNotApp  ),
                    preFlightReportRequiredDocumentsCheckBox(context, '6', 'Cargo Manifest', cargoManifestInc, cargoManifestNotInc,cargoManifestNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '7', 'NOTOC', notocInc, notocNotInc,notocNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '8', 'General Declaration', generalDeclarationInc, generalDeclarationNotInc,generalDeclarationNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '9', 'Fuel Uplift Receipts', fuelUpliftReceiptsInc, fuelUpliftReceiptsNotInc,fuelUpliftReceiptsNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '10', 'Pre-Flight Security Checklist', preflightSecurityChecklistInc, preflightSecurityChecklistNotInc,preflightSecurityChecklistNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '11', 'Weather for Routing', weatherForRoutingInc, weatherForRoutingNotInc,weatherForRoutingNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '12', 'NOTAMS', notamsInc, notamsNotInc, notamsNotApp),
                    preFlightReportRequiredDocumentsCheckBox(context, '13', 'Flight Authorisation and Self - Release', flightAuthorisationAndSelfReleaseInc, flightAuthorisationAndSelfReleaseNotInc, flightAuthorisationAndSelfReleaseNotApp),

                  ]
              )
          );

        });
  }

  Widget preFlightReportRequiredDocumentsCheckBoxListHeader() {
    return Container(
      decoration: new BoxDecoration(
        border: new Border(
          //top: BorderSide(color: Colors.black),
        ),
      ),
      child: Row(
          children: [
            Column(children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 6,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 14,
                padding: EdgeInsets.only(left: 15.0),
                decoration: new BoxDecoration(
                  color: PrimaryColor.withOpacity(0.6),
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: new Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              )
            ]),
            Column(children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 3,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 14,
                padding: EdgeInsets.only(left: 15.0),
                decoration: new BoxDecoration(
                  color: PrimaryColor.withOpacity(0.6),
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black45),
                    right: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: new Text(
                    'Required Documentation',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                    //textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            Column(children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 6,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 14,
                padding: EdgeInsets.only(left: 15.0),
                decoration: new BoxDecoration(
                  color: PrimaryColor.withOpacity(0.6),
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: new Text(
                    'Included',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                    //textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            Column(children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 6,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 14,
                padding: EdgeInsets.only(left: 15.0),
                decoration: new BoxDecoration(
                  color: PrimaryColor.withOpacity(0.6),
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black45),
                    right: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: new Text(
                    'Not Included',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                    //textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            Column(children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 6,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 14,
                padding: EdgeInsets.only(left: 15.0),
                decoration: new BoxDecoration(
                  color: PrimaryColor.withOpacity(0.6),
                  border: new Border(
                    //bottom: BorderSide(color: Colors.black45),
                    right: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: new Text(
                    'Not Applicable',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                    //textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
          ]
      ),
    );
  }

  final _sign = GlobalKey<SignatureState>();
  var datePicker = new DatePicker();

  saveSignature() async {
    print('In Save Signature');
    //get signature
    final sign = _sign.currentState;
    final image = await sign.getData();
    var data = await image.toByteData(format: ui.ImageByteFormat.png);
    sign.clear();
    //final List<int> encoded = base64.encode(data.buffer.asUint8List());
    final encoded = data.buffer.asUint8List();
    print(encoded);
    var futil = new fileUtils();
    futil.writeImage(encoded, '');
  }

  Widget submitButton() {
    var controlBox = new ControlBox();

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
                  onPressed: () async {
                    //securityChecklistMap = widget.multiSelect;
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()),
                    );
                    var preFlightVerificationChecklistMap = new Map<String, dynamic>();
                    //date
                    preFlightVerificationChecklistMap['date'] = dateSelected;

                    //Task
                    preFlightVerificationChecklistMap['task'] = fd_task.text;

                    //Captain
                    preFlightVerificationChecklistMap['captain'] = selectedCaptains;

                    //First Officer
                    preFlightVerificationChecklistMap['first_officer'] = selectedFirstOfficers;

                    //Client
                    preFlightVerificationChecklistMap['client'] = selectedClient;

                    //Daily Flight Report
                    preFlightVerificationChecklistMap['daily_flight_report_inc'] = dailyFlightReportInc;
                    preFlightVerificationChecklistMap['daily_flight_report_not_inc'] = dailyFlightReportNotInc;
                    preFlightVerificationChecklistMap['daily_flight_report_not_app'] = dailyFlightReportNotApp;

                    //Resilience Flight Folio
                    preFlightVerificationChecklistMap['resillience_flight_folio_inc'] = resilienceFlightFolioInc;
                    preFlightVerificationChecklistMap['resillience_flight_folio_not_inc'] = resilienceFlightFolioNotInc;
                    preFlightVerificationChecklistMap['resillience_flight_folio_not_app'] = resilienceFlightFolioNotApp;

                    //Weight & Balance Sheet
                    preFlightVerificationChecklistMap['weight_and_balance_sheet_inc'] = weightAndBalanceSheetInc;
                    preFlightVerificationChecklistMap['weight_and_balance_sheet_not_inc'] = weightAndBalanceSheetNotInc;
                    preFlightVerificationChecklistMap['weight_and_balance_sheet_not_app'] = weightAndBalanceSheetNotApp;

                    //Operational Flight Plan & Told Cards
                    preFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_inc'] = operationalFlightPlanAndToldCardsInc;
                    preFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_not_inc'] = operationalFlightPlanAndToldCardsNotInc;
                    preFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_not_app'] = operationalFlightPlanAndToldCardsNotApp;

                    //Passenger Manifest
                    preFlightVerificationChecklistMap['passenger_manifest_inc'] = passengerManifestInc;
                    preFlightVerificationChecklistMap['passenger_manifest_not_inc'] = passengerManifestNotInc;
                    preFlightVerificationChecklistMap['passenger_manifest_not_app'] = passengerManifestNotApp;

                    //Cargo Manifest
                    preFlightVerificationChecklistMap['cargo_manifest_inc'] = cargoManifestInc;
                    preFlightVerificationChecklistMap['cargo_manifest_not_inc'] = cargoManifestNotInc;
                    preFlightVerificationChecklistMap['cargo_manifest_not_app'] = cargoManifestNotApp;

                    //NOTOC
                    preFlightVerificationChecklistMap['notoc_inc'] = notocInc;
                    preFlightVerificationChecklistMap['notoc_not_inc'] = notocNotInc;
                    preFlightVerificationChecklistMap['notoc_not_app'] = notocNotApp;

                    //General Declaration
                    preFlightVerificationChecklistMap['general_declaration_inc'] = generalDeclarationInc;
                    preFlightVerificationChecklistMap['general_declaration_not_inc'] = generalDeclarationNotInc;
                    preFlightVerificationChecklistMap['general_declaration_not_app'] = generalDeclarationNotApp;

                    //Fuel Uplift Receipts
                    preFlightVerificationChecklistMap['fuel_uplift_receipts_inc'] = fuelUpliftReceiptsInc;
                    preFlightVerificationChecklistMap['fuel_uplift_receipts_not_inc'] = fuelUpliftReceiptsNotInc;
                    preFlightVerificationChecklistMap['fuel_uplift_receipts_not_app'] = fuelUpliftReceiptsNotApp;

                    //Pre-Flight Security Checklist
                    preFlightVerificationChecklistMap['pre_flight_security_checklist_inc'] = preflightSecurityChecklistInc;
                    preFlightVerificationChecklistMap['pre_flight_security_checklist_not_inc'] = preflightSecurityChecklistNotInc;
                    preFlightVerificationChecklistMap['pre_flight_security_checklist_not_app'] = preflightSecurityChecklistNotApp;

                    //Weather & Routing

                    preFlightVerificationChecklistMap['weather_and_routing_inc'] = weatherForRoutingInc;
                    preFlightVerificationChecklistMap['weather_and_routing_not_inc'] = weatherForRoutingNotInc;
                    preFlightVerificationChecklistMap['weather_and_routing_not_app'] = weatherForRoutingNotApp;

                    //NOTAMS

                    preFlightVerificationChecklistMap['notams_inc'] = notamsInc;
                    preFlightVerificationChecklistMap['notams_not_inc'] = notamsNotInc;
                    preFlightVerificationChecklistMap['notams_not_app'] = notamsNotApp;

                    //Flight Authorisation and Self-Release

                    preFlightVerificationChecklistMap['flight_authorisation_and_self_release_inc'] = flightAuthorisationAndSelfReleaseInc;
                    preFlightVerificationChecklistMap['flight_authorisation_and_self_release_not_inc'] = flightAuthorisationAndSelfReleaseNotInc;
                    preFlightVerificationChecklistMap['flight_authorisation_and_self_release_not_app'] = flightAuthorisationAndSelfReleaseNotApp;
                    //saveSignature();
                    controlBox.saveData(preFlightVerificationChecklistMap, 'pre-flight verification');
                    sp.setSelectedPrefs('Pilot', selectedFirstOfficers, 'FO');
                    sp.setSelectedPrefs('Pilot', selectedCaptains, 'Cap');
                    sp.setSelectedPrefs('Client', selectedClient);
                  })
          ),
        ]
    );
  }


}