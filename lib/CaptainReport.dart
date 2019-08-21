import 'package:flutter/material.dart';
import 'PostFlightMenu.dart';
import 'ControlBox.dart';
import 'HomePage.dart';
import 'SharedPrefs.dart';

class CaptainReportPage extends StatefulWidget {
  @override
  createState() {
    return CaptainReportPageSate();
  }
}

class CaptainReportPageSate extends State<CaptainReportPage> {

  @override
  void initState() {
    super.initState();
    fromTimeText = '';
    toTimeText = '';
    totalRestText = '';
    extraFdpAllowedText = '';
    signOffTimeText = '';
    flightTimeText = '';
    splitDutyText = '';
    occurenceReportFiledText = '';
    noOfSectorsText = '';
    snagListText = '';
    dutyTime = '';
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    cr_from_time.dispose();
    cr_to_time.dispose();
    cr_total_rest_time.dispose();
    cr_extra_fdp_allowed.dispose();
    cr_sign_off_time.dispose();
    cr_split_duty.dispose();
    cr_no_off_sectors.dispose();
    cr_occurence_report_field.dispose();
    cr_flight_time.dispose();
    cr_duty_time.dispose();
    cr_snag_list.dispose();
    super.dispose();
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
      body: Center(
        child: new ListView(
          children: <Widget>[
            Column(children: [
              CaptainReportPageHeader(context),
              fromToTotalExtra(context),
              Container(
                margin: EdgeInsets.only(top: 20.0),
              ),
              signOff(context),
              snagList(context),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: submitButton(context),
                    ),
                  ]
              ),
            ]),
          ],
        ),
      ),
    );
  }
  var sp = new sharedPrefs();
  var cb = new ControlBox();
  var PrimaryColor = const Color(0xFF28a9e0);

  Widget CaptainReportPageHeader(context) {
    return Column(children: [
      Row(children:[
      Container(
      child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 50.0,
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                   ),
              ),
              child: Center(
                child: new Text(
                  'Captain/Crew Report',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ]),
    ]),
    ),
      ]),
    ]);
  }

  final cr_from_time = TextEditingController();
  final cr_to_time = TextEditingController();
  final cr_total_rest_time = TextEditingController();
  final cr_extra_fdp_allowed = TextEditingController();

  final cr_sign_off_time = TextEditingController();
  final cr_split_duty = TextEditingController();
  final cr_no_off_sectors = TextEditingController();
  final cr_occurence_report_field = TextEditingController();
  final cr_flight_time = TextEditingController();
  final cr_duty_time = TextEditingController();

  final cr_snag_list = TextEditingController();

  var fromTimeText;
  var toTimeText;
  var totalRestText;
  var extraFdpAllowedText;
  var signOffTimeText;
  var flightTimeText;
  var splitDutyText;
  var occurenceReportFiledText;
  var noOfSectorsText;
  var snagListText;
  var dutyTime;


  Widget futureDutyTime(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
         // var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_duty_time.text = jvalue['duty_time'];
          }else if (dutyTime != ''){
            cr_duty_time.text = dutyTime;
          }else{
            cr_duty_time.text = '';
          }
          return new TextField(
            controller: cr_duty_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Time',
            ),
            onChanged: (text){
              dutyTime = text;
            },

          );
        });
  }

  Widget futureExtraFdpText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_extra_fdp_allowed.text = jvalue['cr_extra_fdp_allowed'];
          }else if (extraFdpAllowedText != ''){
            cr_extra_fdp_allowed.text = extraFdpAllowedText;
          }else{
            cr_extra_fdp_allowed.text = '';
          }
          return new TextField(
            controller: cr_extra_fdp_allowed,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Yes / No',
            ),
            onChanged: (text){
              extraFdpAllowedText = text;
            },

          );
        });
  }

  Widget futureTotalRestText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_total_rest_time.text = jvalue['total_rest_time'];
          }else if (totalRestText != ''){
            cr_total_rest_time.text = totalRestText;
          }else{
            cr_total_rest_time.text = '';
          }
          return new TextField(
            controller: cr_total_rest_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Rest Time in Hours',
            ),
            onChanged: (text){
              totalRestText = text;
            },

          );
        });
  }

  Widget futureToTimeText(context) {
    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_to_time.text = jvalue['to_time'];
          }else if (toTimeText != ''){
            cr_to_time.text = toTimeText;
          }else{
            cr_to_time.text = '';
          }
          return new TextField(
            controller: cr_to_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Time',
            ),
            onChanged: (text){
              toTimeText = text;
            },

          );
        });
  }

  Widget futureFromTimeText(context) {
      return new FutureBuilder(
          future: cb.readData('captains report'),
          builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
            //var value = '';
            if (snapshot.hasData && snapshot.data != null) {
              var jvalue = snapshot.data;
              cr_from_time.text = jvalue['from_time'];
            }else if (fromTimeText != ''){
              cr_from_time.text = fromTimeText;
            }else{
              cr_from_time.text = '';
            }
            return new TextField(
              controller: cr_from_time,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Time',
              ),
              onChanged: (text){
                fromTimeText = text;
              },

            );
          });
    }

  Widget futureSignOffTimeText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_sign_off_time.text = jvalue['sign_off_time'];
          }else if (signOffTimeText != ''){
            cr_sign_off_time.text = signOffTimeText;
          }else{
            cr_sign_off_time.text = '';
          }
          return new TextField(
            controller: cr_sign_off_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Time',
            ),
            onChanged: (text){
              signOffTimeText = text;
            },

          );
        });
  }

  Widget futureFlightTimeText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_flight_time.text = jvalue['flight_time'];
          }else if (flightTimeText != ''){
            cr_flight_time.text = flightTimeText;
          }else{
            cr_flight_time.text = '';
          }
          return new TextField(
            controller: cr_flight_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Hours',
            ),
            onChanged: (text){
              flightTimeText = text;
            },

          );
        });
  }

  Widget futureSplitDutyText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_split_duty.text = jvalue['split_duty'];
          }else if (splitDutyText != ''){
            cr_split_duty.text = splitDutyText;
          }else{
            cr_split_duty.text = '';
          }
          return new TextField(
            controller: cr_split_duty,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Text',
            ),
            onChanged: (text){
              splitDutyText = text;
            },

          );
        });
  }

  Widget futureOccurenceReportText(context) {

    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_occurence_report_field.text = jvalue['occurence_report_field'];
          }else if (occurenceReportFiledText != ''){
            cr_occurence_report_field.text = occurenceReportFiledText;
          }else{
            cr_occurence_report_field.text = '';
          }
          return new TextField(
            controller: cr_occurence_report_field,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Yes/ No',
            ),
            onChanged: (text){
              occurenceReportFiledText = text;
            },

          );
        });
  }

  Widget futureNoOfSectorsText(context) {
    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_no_off_sectors.text = jvalue['no_of_sectors'];
          }else if (noOfSectorsText != ''){
            cr_no_off_sectors.text = noOfSectorsText;
          }else{
            cr_no_off_sectors.text = '';
          }
          return new TextField(
            controller: cr_no_off_sectors,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Sectors',
            ),
            onChanged: (text){
              noOfSectorsText = text;
            },
          );
        });
  }

  Widget futureSnagListText(context) {
    return new FutureBuilder(
        future: cb.readData('captains report'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            cr_snag_list.text = jvalue['snag_list'];
          }else if (snagListText != ''){
            cr_snag_list.text = snagListText;
          }else{
            cr_snag_list.text = '';
          }
          return new TextField(
            controller: cr_snag_list,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Your report ....',
            ),
            onChanged: (text){
              snagListText = text;
            },
          );
        });
  }

  Widget fromToTotalExtra(context) {
    return Row(children: [
      Column(children: [
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: Center(
              child: Text(
                'From(Local Time)',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ),
        ]),
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            padding: EdgeInsets.only(left: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                bottom: BorderSide(color: Colors.black45),
                //top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: futureFromTimeText(context),
          ),
        ]),
      ]),
      Column(children: [
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: Center(
              child: Text(
                'To(Local Time)',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ),
        ]),
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            padding: EdgeInsets.only(left: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                bottom: BorderSide(color: Colors.black45),
                //top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: futureToTimeText(context),
          ),
        ]),
      ]),
      Column(children: [
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            padding: EdgeInsets.only(left: 10.0, top: 7.0),
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
                //bottom: BorderSide(color: Colors.black),
                //top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: Text(
              'Total Rest',
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 2.0,
            ),
          ),
        ]),
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            padding: EdgeInsets.only(left: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                bottom: BorderSide(color: Colors.black45),
                //top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: futureTotalRestText(context))
        ]),
      ]),
      Column(children: [
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
                //bottom: BorderSide(color: Colors.black),
                //top: BorderSide(color: Colors.black),
                //right: BorderSide(color: Colors.black),
              ),
            ),
            child: Center(
              child: Text(
                'Extra FDP Allowed',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ),
        ]),
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 50.0,
            padding: EdgeInsets.only(left: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                bottom: BorderSide(color: Colors.black45),
                //top: BorderSide(color: Colors.black),
                //right: BorderSide(color: Colors.black),
              ),
            ),
            child:futureExtraFdpText(context),
          ),
        ]),
      ]),
    ]);
  }

  Widget signOff(context) {
    return Column(
      children: [
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //top: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: Text(
                  'Sign Off Time(Local)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.2,
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: futureSignOffTimeText(context),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: Text(
                  'Split Duty',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: futureSplitDutyText(context)
            ),
          ]),
        ]
        ),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: Text(
                  'No. of Sectors',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: futureNoOfSectorsText(context)
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: Text(
                  'Occurence Report Filed',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.2,
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child:futureOccurenceReportText(context)
              ),
            ),
          ]),
        ]
        ),
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  //bottom: BorderSide(color: Colors.black),
                ),
              ),
              child: Center(
                child: Text(
                  'Flight Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: futureFlightTimeText(context),
              ),
            ),
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              //padding: EdgeInsets.only(left: 10.0, top: 7.0),
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
                  //bottom: BorderSide(color: Colors.black45),
                  //right: BorderSide(color: Colors.black45),
                ),
              ),
              child: Center(
                child: Text(
                  'Duty Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ]),

          Column(children: [
            Row(children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 50.0,
                padding: EdgeInsets.only(left: 10.0),
                decoration: new BoxDecoration(
                  border: new Border(
                    bottom: BorderSide(color: Colors.black45),
                  ),
                ),
                child: Center(
                  child: futureDutyTime(context),
//                  child: new TextField(
//                      controller: cr_duty_time,
//                      decoration: InputDecoration(
//                          border: InputBorder.none, hintText: 'Enter Time')
//                  ),
                ),
              ),
            ]),
          ]),

        ]
        ),

      ],
    );
  }

  Widget snagList(context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 14,
            margin: EdgeInsets.only(top:10.0),
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
                 // bottom: BorderSide(color: Colors.black),
                 // top: BorderSide(color: Colors.black)
              ),
            ),
            child: Center(
              child: new Text(
                'Defect List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),

        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 4,
            margin: EdgeInsets.only( bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0, left: 30.0),
            decoration: new BoxDecoration(
              //color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  //top: BorderSide(color: Colors.black)
              ),
            ),
            child: futureSnagListText(context),
          ),
        ]),
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
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostflightMenu()
                      ),
                    );
                    var captainReportMap = new Map<String, dynamic>();

                    captainReportMap['from_time'] = cr_from_time.text;
                    captainReportMap['to_time'] = cr_to_time.text;
                    captainReportMap['cr_extra_fdp_allowed'] = cr_extra_fdp_allowed.text;
                    captainReportMap['total_rest_time'] = cr_total_rest_time.text;
                    captainReportMap['sign_off_time'] = cr_sign_off_time.text;
                    captainReportMap['split_duty'] = cr_split_duty.text;
                    captainReportMap['no_of_sectors'] = cr_no_off_sectors.text;
                    captainReportMap['occurence_report_field'] = cr_occurence_report_field.text;
                    captainReportMap['flight_time'] = cr_flight_time.text;
                    captainReportMap['duty_time'] = cr_duty_time.text;
                    captainReportMap['snag_list'] = cr_snag_list.text;

                    var controlBox = new ControlBox();
                    controlBox.saveData(captainReportMap, 'captains report');
                  })
          ),
        ]
    );
  }


}
