import 'package:flutter/material.dart';
import 'ControlBox.dart';
import 'HomePage.dart';
//import 'PostFlightMenu.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'widgets/DatePickerWidget.dart';
//import 'widgets/pilotDropDownWidget.dart';
//import 'widgets/clientDropDownWidget.dart';
import 'widgets/baseDropDownWidget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'JSONUtil.dart';
import 'dart:ui' as ui;
//import 'dart:convert';
import 'SharedPrefs.dart';
import 'NewFlightPage.dart';

class PostFlightVerificationPage extends StatefulWidget {
  @override
  createState() {
    return PostFlightVerificationPageState();
  }
}

class PostFlightVerificationPageState extends State<PostFlightVerificationPage> {

  var PrimaryColor = const Color(0xFF28a9e0);

  var cb = new ControlBox();
  DateTime selectedDate;
  var dateSelected;
  var reload;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    dateSelected = selectedDate.toString().split(' ')[0];
    reload = false;

  }

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
                  postFlightVerificationPageHeader(context),
                  Container(
                    decoration: new BoxDecoration(
//                  color: Colors.blue[100],
                      border: new Border(

//              top: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  //postFlightVerificationClientCaptainTask(context),
                  //Container(margin: EdgeInsets.only(top:20.0)),
                  postFlightReportRequiredDocumentsCheckBoxListHeader(),
                  postFlightReportRequiredDocumentsCheckBoxList(context),
                  submittedToOperations(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          child: submitButton(),
                        ),
                      ]
                  ),
                ]),
              ]
          )
      ),
    );
  }

  Widget postFlightVerificationPageHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          margin: EdgeInsets.only(bottom:10.0),
          width: MediaQuery.of(context).size.width / 1,
          height: 50.0,
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            border: new Border(
            ),
          ),
          child: Center(
            child: Text(
              'Post Flight Verification',
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor:2.0,
            ),
          ),
        ),
      ]),
    ]);
  }

  var dropDownWidget = new BaseDropDown();

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

  Widget postFlightReportRequiredDocumentsCheckBoxList(context) {
    return FutureBuilder(
      future: cb.readData('post-flight verification'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData && snapshot.data != null && reload == false) {
            var jvalue = snapshot.data;
            dailyFlightReportInc = jvalue['daily_flight_report_inc'];
            dailyFlightReportNotInc = jvalue['daily_flight_report_not_inc'];
            dailyFlightReportNotApp = jvalue['daily_flight_report_not_app'];

            resilienceFlightFolioInc = jvalue['resillience_flight_folio_inc'];
            resilienceFlightFolioNotInc =
            jvalue['resillience_flight_folio_not_inc'];
            resilienceFlightFolioNotApp =
            jvalue['resillience_flight_folio_not_app'];

            weightAndBalanceSheetInc = jvalue['weight_and_balance_sheet_inc'];
            weightAndBalanceSheetNotInc =
            jvalue['weight_and_balance_sheet_not_inc'];
            weightAndBalanceSheetNotApp =
            jvalue['weight_and_balance_sheet_not_app'];

            operationalFlightPlanAndToldCardsInc =
            jvalue['operational_flight_plan_and_told_cards_inc'];
            operationalFlightPlanAndToldCardsNotInc =
            jvalue['operational_flight_plan_and_told_cards_not_inc'];
            operationalFlightPlanAndToldCardsNotApp =
            jvalue['operational_flight_plan_and_told_cards_not_app'];

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
            preflightSecurityChecklistNotInc =
            jvalue['fuel_uplift_receipts_not_inc'];
            preflightSecurityChecklistNotApp =
            jvalue['fuel_uplift_receipts_not_app'];

            notamsInc = jvalue['notams_inc'];
            notamsNotInc = jvalue['notams_not_inc'];
            notamsNotApp = jvalue['notams_not_app'];

            flightAuthorisationAndSelfReleaseInc =
            jvalue['flight_authorisation_and_self_release_inc'];
            flightAuthorisationAndSelfReleaseNotInc =
            jvalue['flight_authorisation_and_self_release_not_inc'];
            flightAuthorisationAndSelfReleaseNotApp =
            jvalue['flight_authorisation_and_self_release_not_app'];
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

  Widget postFlightReportRequiredDocumentsCheckBoxListHeader() {
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
                    //bottom: BorderSide(color: Colors.black),
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
//                    bottom: BorderSide(color: Colors.black45),
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
                    //bottom: BorderSide(color: Colors.black),
                    //right: BorderSide(color: Colors.black),
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
  final _signTwo = GlobalKey<SignatureState>();
  var datePicker = new DatePicker();
  Widget submittedToOperations() {
    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          dateSelected = selectedDate.toString().split(' ')[0];
        });
    }
    return Column(
        children:[
          Row(
              children: [
                Column(
                    children: [
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 50.0,
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.only(left: 10.0),
                              decoration: new BoxDecoration(
                                color: PrimaryColor.withOpacity(0.6),
                                border: new Border(
//                                  bottom: BorderSide(color: Colors.black),
//                                  top: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black45),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Name',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textScaleFactor:2.0,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 50.0,
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.only(left:10.0),
                              decoration: new BoxDecoration(
                                border: new Border(
                                  bottom: BorderSide(color: Colors.black45),
                                  top: BorderSide(color: Colors.black45),
                                  right: BorderSide(color: Colors.black45),
                                ),
                              ),
                              child: Center(
                                child: new TextField(
                                  //controller: fd_sign_on_time,
                                    decoration: InputDecoration(
                                        border: InputBorder.none, hintText: 'Enter Name')),
                              ),
                            ),
                          ]
                      ),
                    ]
                ),
                Column(
                    children: [
                      Row(
                          children: [
                            Column(
                                children: [

                                  Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width / 2,
                                          height: 50.0,
                                          margin: EdgeInsets.only(top: 10.0),
                                          decoration: new BoxDecoration(
                                            color: PrimaryColor.withOpacity(0.6),
                                            border: new Border(
//                                              bottom: BorderSide(color: Colors.black),
//                                              top: BorderSide(color: Colors.black),
//                                              right: BorderSide(color: Colors.black),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Date Submitted',
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                              textScaleFactor:2.0,
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: Row(
                                        children: [
                                          Column(
                                              children:[
                                                Container(
                                                  height: 50.0,
                                                  margin: EdgeInsets.only(top: 10.0),
                                                  decoration: new BoxDecoration(
                                                    border: new Border(
                                                      bottom: BorderSide(color: Colors.black45),
                                                      top: BorderSide(color: Colors.black45),
                                                      right: BorderSide(color: Colors.black45),
                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context).size.width / 2.8,
                                                  child:Center(
                                                    child: Text(
                                                      dateSelected,
                                                      //textAlign: TextAlign.center,
                                                      style: TextStyle(fontWeight: FontWeight.bold),
                                                      //textScaleFactor:2.0,
                                                    ),
                                                  ),
                                                ),
                                              ]
                                          ),
                                          Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(top: 10.0),
                                                  width: MediaQuery.of(context).size.width / 7,
                                                  decoration: new BoxDecoration(
                                                    //color: Colors.blue[100],
                                                    border: new Border(
                                                      bottom: BorderSide(color: Colors.black45),
                                                      top: BorderSide(color: Colors.black45),
                                                      //left: BorderSide(color: Colors.black),
                                                    ),
                                                  ),
                                                  child: IconButton(
                                                    icon: new Icon(MdiIcons.calendar),
                                                    onPressed: () {
                                                      _selectDate(context);

                                                    },
                                                    //child: Text('Select date'),
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ]
                                    ),
                                  ),
                                ]
                            )
                          ]
                      ),
                    ]
                ),
              ]
          ),

          Row(
              children: [
                Column(
                    children: [
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              height: 50.0,
                              margin: EdgeInsets.only(top: 10.0),
                              decoration: new BoxDecoration(
                                color: PrimaryColor.withOpacity(0.6),
                                border: new Border(
                                  //bottom: BorderSide(color: Colors.black),
//                                  top: BorderSide(color: Colors.black45),
//                                  right: BorderSide(color: Colors.black45),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Captain Signature',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textScaleFactor:2.0,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              height: 500.0,
                              //margin: EdgeInsets.only(top: 10.0),
                              decoration: new BoxDecoration(
                                border: new Border(
                                  bottom: BorderSide(color: Colors.black45),
//                                  top: BorderSide(color: Colors.black),
//                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Signature(
                                color: Colors.black,
                                // Color of the drawing path
                                strokeWidth: 5.0,
                                // with
                                backgroundPainter: null,
                                // Additional custom painter to draw stuff like watermark
                                onSign: () {
                                  final sign = _sign.currentState;
                                  //rdebugPrint('${sign.points.length} points in the signature');
                                },
                                // Callback called on user pan drawing
                                key: _sign, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                              ),

                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              height: 50.0,
                              margin: EdgeInsets.only(top: 10.0),
                              decoration: new BoxDecoration(
                                color: PrimaryColor.withOpacity(0.6),
                                border: new Border(
                                  //bottom: BorderSide(color: Colors.black),
//                                  top: BorderSide(color: Colors.black45),
//                                  right: BorderSide(color: Colors.black45),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'First Officer Signature',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textScaleFactor:2.0,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              height: 500.0,
                              //margin: EdgeInsets.only(top: 10.0),
                              decoration: new BoxDecoration(
                                border: new Border(
                                  bottom: BorderSide(color: Colors.black45),
//                                  top: BorderSide(color: Colors.black),
//                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Signature(
                                color: Colors.black,
                                // Color of the drawing path
                                strokeWidth: 5.0,
                                // with
                                backgroundPainter: null,
                                // Additional custom painter to draw stuff like watermark
                                onSign: () {
                                  final sign = _signTwo.currentState;
                                  //rdebugPrint('${sign.points.length} points in the signature');
                                },
                                // Callback called on user pan drawing
                                key: _signTwo, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                              ),

                            ),
                          ]
                      ),


                    ]
                ),
              ]
          ),
        ]
    );
  }

  Future<String> saveSignature() async {
    print('In Save Signature');
    var prefs = new sharedPrefs();
    //get signature
    var flightID = await prefs.getPrefs('flightID');
    final sign = _sign.currentState;
    final image = await sign.getData();
    var data = await image.toByteData(format: ui.ImageByteFormat.png);
    sign.clear();
    //final List<int> encoded = base64.encode(data.buffer.asUint8List());
    final encoded = data.buffer.asUint8List();
    print(encoded);
    var futil = new fileUtils();
    await futil.writeImage(encoded, flightID);
    var cb = new ControlBox();
    return await cb.uploadImage();
  }


  Widget submitButton() {

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

                    var postFlightVerificationChecklistMap = new Map<String, dynamic>();
                    //Date
                    postFlightVerificationChecklistMap['post_flight_date'] = dateSelected;

//                    postFlightVerificationChecklistMap['post_flight_clients'] = selectedClient;
//                    //Captain
//                    postFlightVerificationChecklistMap['post_flight_captain'] = selectedCaptains.name;
//
//                    //First Officer
//                    postFlightVerificationChecklistMap['post_flight_first_officer'] = selectedFirstOfficers.name;
//
//                    //Task
//                    postFlightVerificationChecklistMap['task'] = fd_task.text;

                    //Daily Flight Report
                    postFlightVerificationChecklistMap['daily_flight_report_inc'] = dailyFlightReportInc;
                    postFlightVerificationChecklistMap['daily_flight_report_not_inc'] = dailyFlightReportNotInc;
                    postFlightVerificationChecklistMap['daily_flight_report_not_app'] = dailyFlightReportNotApp;

                    //Resilience Flight Folio
                    postFlightVerificationChecklistMap['resillience_flight_folio_inc'] = resilienceFlightFolioInc;
                    postFlightVerificationChecklistMap['resillience_flight_folio_not_inc'] = resilienceFlightFolioNotInc;
                    postFlightVerificationChecklistMap['resillience_flight_folio_not_app'] = resilienceFlightFolioNotApp;

                    //Weight & Balance Sheet
                    postFlightVerificationChecklistMap['weight_and_balance_sheet_inc'] = weightAndBalanceSheetInc;
                    postFlightVerificationChecklistMap['weight_and_balance_sheet_not_inc'] = weightAndBalanceSheetNotInc;
                    postFlightVerificationChecklistMap['weight_and_balance_sheet_not_app'] = weightAndBalanceSheetNotApp;

                    //Operational Flight Plan & Told Cards
                    postFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_inc'] = operationalFlightPlanAndToldCardsInc;
                    postFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_not_inc'] = operationalFlightPlanAndToldCardsNotInc;
                    postFlightVerificationChecklistMap['operational_flight_plan_and_told_cards_not_app'] = operationalFlightPlanAndToldCardsNotApp;

                    //Passenger Manifest
                    postFlightVerificationChecklistMap['passenger_manifest_inc'] = passengerManifestInc;
                    postFlightVerificationChecklistMap['passenger_manifest_not_inc'] = passengerManifestNotInc;
                    postFlightVerificationChecklistMap['passenger_manifest_not_app'] = passengerManifestNotApp;

                    //Cargo Manifest
                    postFlightVerificationChecklistMap['cargo_manifest_inc'] = cargoManifestInc;
                    postFlightVerificationChecklistMap['cargo_manifest_not_inc'] = cargoManifestNotInc;
                    postFlightVerificationChecklistMap['cargo_manifest_not_app'] = cargoManifestNotApp;

                    //NOTOC
                    postFlightVerificationChecklistMap['notoc_inc'] = notocInc;
                    postFlightVerificationChecklistMap['notoc_not_inc'] = notocNotInc;
                    postFlightVerificationChecklistMap['notoc_not_app'] = notocNotApp;

                    //General Declaration
                    postFlightVerificationChecklistMap['general_declaration_inc'] = generalDeclarationInc;
                    postFlightVerificationChecklistMap['general_declaration_not_inc'] = generalDeclarationNotInc;
                    postFlightVerificationChecklistMap['general_declaration_not_app'] = generalDeclarationNotApp;

                    //Fuel Uplift Receipts
                    postFlightVerificationChecklistMap['fuel_uplift_receipts_inc'] = fuelUpliftReceiptsInc;
                    postFlightVerificationChecklistMap['fuel_uplift_receipts_not_inc'] = fuelUpliftReceiptsNotInc;
                    postFlightVerificationChecklistMap['fuel_uplift_receipts_not_app'] = fuelUpliftReceiptsNotApp;

                    //Pre-Flight Security Checklist
                    postFlightVerificationChecklistMap['pre_flight_security_checklist_inc'] = preflightSecurityChecklistInc;
                    postFlightVerificationChecklistMap['pre_flight_security_checklist_not_inc'] = preflightSecurityChecklistNotInc;
                    postFlightVerificationChecklistMap['pre_flight_security_checklist_not_app'] = preflightSecurityChecklistNotApp;

                    //Weather & Routing

                    postFlightVerificationChecklistMap['weather_and_routing_inc'] = weatherForRoutingInc;
                    postFlightVerificationChecklistMap['weather_and_routing_not_inc'] = weatherForRoutingNotInc;
                    postFlightVerificationChecklistMap['weather_and_routing_not_app'] = weatherForRoutingNotApp;

                    //NOTAMS

                    postFlightVerificationChecklistMap['notams_inc'] = notamsInc;
                    postFlightVerificationChecklistMap['notams_not_inc'] = notamsNotInc;
                    postFlightVerificationChecklistMap['notams_not_app'] = notamsNotApp;

                    //Flight Authorisation and Self-Release

                    postFlightVerificationChecklistMap['flight_authorisation_and_self_release_inc'] = flightAuthorisationAndSelfReleaseInc;
                    postFlightVerificationChecklistMap['flight_authorisation_and_self_release_not_inc'] = flightAuthorisationAndSelfReleaseNotInc;
                    postFlightVerificationChecklistMap['flight_authorisation_and_self_release_not_app'] = flightAuthorisationAndSelfReleaseNotApp;

                    var imageURL = await saveSignature();
                    var imageMap = {'imageUrl': imageURL};
                    var controlBox = new ControlBox();
                    await controlBox.saveData(imageMap, 'signature');

                    var imageURLFO = await saveSignature();
                    var imageMapFO = {'imageUrl': imageURLFO};
                    await controlBox.saveData(imageMapFO, 'signatureFO');

                    //controlBox.saveData(postFlightVerificationChecklistMap, 'post-flight verification');

                    await controlBox.saveData(postFlightVerificationChecklistMap, 'post-flight verification')
                    .then((_){
                      controlBox.saveToDB();
                      //controlBox.cleanUp();
                    });
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // builder: (context) => PostflightMenu()),
                          builder: (context) => NewFlightPage()),
                    );
                    //await controlBox.saveToDB();

                    //controlBox.cleanUp();

                  }),
          ),
        ]
    );
  }

}
