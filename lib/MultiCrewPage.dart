import 'package:flutter/material.dart';
//import 'widgets/DatePickerWidget.dart';
import 'dart:convert';
//import 'JSONUtil.dart';
//import 'package:path_provider/path_provider.dart';
//import 'firebaseUtil.dart';
import 'SharedPrefs.dart';
import 'PreFlightMenu.dart';
import 'ControlBox.dart';
import 'HomePage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'crewClass.dart';

class Sector {
  const Sector(this.id,this.sector);

  final String sector;
  final int id;
}

class Time {
  const Time(this.id,this.time);

  final String time;
  final int id;
}

class MultiCrewPage extends StatefulWidget {
  createState() {
    return MultiCrewPageState();
  }
}


class MultiCrewPageState extends State<MultiCrewPage> {

  var PrimaryColor = const Color(0xFF28a9e0);

  var sp = new sharedPrefs();
  var cb = new ControlBox();

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    dateSelected = selectedDate.toString().split(' ')[0];
    selectedBase = '';
    selectedAcReg = '';
    selectedTime = times[0];
    selectedSector = sectors[0];
    routeText = '';
    dutyTimeText = '';
    //dutyTime = '';
    reload = false;
  }
  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    fd_base.dispose();
    fd_client.dispose();
    fd_ac_reg.dispose();
    fd_route.dispose();
    fd_sign_on_time.dispose();
    fd_task.dispose();
    super.dispose();
  }

  var reload;
  var dutyTime;
  var dutyTimeText;
  var routeText;
  var signOnTimeText;
  DateTime selectedDate;
  var dateSelected;

  String selectedBase ;
  String selectedAcReg ;

  Time selectedTime;
  List<Time> times = <Time>[const Time(1,'0500 - 0659'), const Time(2,"0700 - 1359"), const Time(3,'1400 - 2059'),const Time(4,'2100 - 2059'),const Time(5,'2200 - 0459'),];

  Sector selectedSector;
  List<Sector> sectors = <Sector>[const Sector(1,'1'), const Sector(2,"2"), const Sector(3,'3'),const Sector(4,'4'),const Sector(5,'5'),const Sector(1,'6'), const Sector(2,"7"), const Sector(3,'8')];

  Widget futureDutyTimeText(context) {
    return new FutureBuilder(
        future: cb.readData('multi-crew'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          //print('fire:' + dutyTimeText);
          if (dutyTimeText != ''){
            dutyTime = dutyTimeText;
          } else if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            dutyTime = jvalue['duty_time'];
          }else{
            dutyTime = '';
          }
          return new Text(dutyTime ?? '');
        });
  }

  Widget futureSignOnTimeText(context) {
    return new FutureBuilder(
        future: cb.readData('multi-crew'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            fd_sign_on_time.text = jvalue['fd_sign_on_time'];
          }else if (signOnTimeText != ''){
            fd_sign_on_time.text = signOnTimeText;
          }else{
            fd_sign_on_time.text = '';
          }
          return new TextField(
            controller: fd_sign_on_time,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Sign-on Time',
            ),
            onChanged: (text){
              signOnTimeText = text;
            },

          );
        });
  }

  Widget futureRouteText(context) {

    return new FutureBuilder(
        future: cb.readData('multi-crew'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //var value = '';
          if (snapshot.hasData && snapshot.data != null) {
            var jvalue = snapshot.data;
            fd_route.text = jvalue['fd_route'];
          }else if (routeText != ''){
            fd_route.text = routeText;
          }else{
            fd_route.text = '';
          }
          return new TextField(
            controller: fd_route,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Route',
            ),
            onChanged: (text){
              routeText = text;
            },

          );
        });
  }

  Widget futureWidgetBase(context) {
    return new FutureBuilder(
      future: sp.getPrefs('Base'),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        var testval ;
        List<DropdownMenuItem<String>> valueList = [];
        if (snapshot.hasData && snapshot.data != null) {
          var myJson = json.decode(snapshot.data);
          var dataList = myJson['data'];
          for(var listValue in dataList) {
            valueList.add(new DropdownMenuItem(child: new Text(listValue),value: listValue,));
          }

          for (var ddentry in valueList){
            if (selectedBase != ''){
              if(ddentry.value == selectedBase){
                testval = ddentry.value;
              }
            }else if (ddentry.value == myJson['Selected'] && myJson['Selected'] != ''){
              testval = ddentry.value;
              selectedBase = ddentry.value;
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
              selectedBase = newValue;
            });
          },
          items: valueList,
        );
      }
    );
  }

  Widget futureWidgetAcReg(context) {
    return new FutureBuilder(
      future: sp.getPrefs('ACREG'),
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
            if (selectedAcReg != ''){
              if(ddentry.value == selectedAcReg){
                testval = ddentry.value;
              }
            }else if (ddentry.value == myJson['Selected'] && myJson['Selected'] != ''){
              testval = ddentry.value;
              selectedAcReg = ddentry.value;
            }

          }

        }
        return new DropdownButton(
          hint: Text('Select'),
          value: testval,
          onChanged: (newValue) {
            setState(() {
              print('newval:' + newValue);
              selectedAcReg = newValue;
            });
          },
          items: valueList,
        );
      }
    );
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
      body: ListView(children: [
        Column(children: [
          Row(children: [
            multiCrewPageHeader(context),
          ]),
          Row(children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: dailyFlightReport(context),
            ),
          ]),
          Row(children: [
            Container(
              child: routing(context),
            ),
          ]),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: signOnTime(context)),
            ],
          ),
          Row(children: [
            Container(
              child: conductedDuringCrewBriefingHeader(),
            ),
          ]),
          Column(children: [
            Container(
              //margin: EdgeInsets.only(top: 10.0),
              child: conductedCrewBriefingCheckboxList(context),
            ),
          ]),
          Row(children: [
            Container(
              child: discussedDuringCrewBriefingHeader(),
            ),
          ]),
          Column(children: [
            Container(
              //margin: EdgeInsets.only(top: 10.0),
              child: discussedCrewBriefingCheckboxList(context),
            ),
          ]),
          Container(margin: EdgeInsets.only(top:10.0),),
          Row(
              children: [
                sectorTimesWidget(),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: submitButton(),
                ),
              ]),

        ]),
      ]),
    );
  }

  Widget multiCrewPageHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          width: MediaQuery.of(context).size.width / 1,
          height: 50.0,
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            //color: Colors.blue[100],
            border: new Border(
            ),
          ),
          child: Center(
            child: Text(
              'Multi-Crew Operations',
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 2.0,
            ),
          ),
        ),
      ]),
    ]);
  }

  final fd_base = TextEditingController();
  final fd_client = TextEditingController();
  final fd_ac_reg = TextEditingController();
  final fd_route = TextEditingController();
  final fd_sign_on_time = TextEditingController();
  final fd_task = TextEditingController();

  Widget dailyFlightReport(context) {

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

    return Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 7.5,
          height: 50.0,
          //adding: EdgeInsets.only(left:20.0),
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            border: new Border(
//              bottom: BorderSide(color: Colors.black38),
//              top: BorderSide(color: Colors.black38),
            ),
          ),
          child: Center(
            child: Text(
              'Date',
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor:2.0,
            ),
          ),
        ),
      ]),
      Container(
        width: MediaQuery.of(context).size.width / 5,
        child: Row(
          children: [
            Column(
                children: [
                  Container(
                    height: 50.0,

                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                        bottom: BorderSide(color: Colors.black45),
                        top: BorderSide(color: Colors.black45),
                        left: BorderSide(color: Colors.black45),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width / 7.8,
                    child: Center(
                      child: Text(dateSelected ?? '', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ]
            ),
            Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 14,
                    decoration: new BoxDecoration(
                      //color: Colors.blue[100],
                      border: new Border(
                        bottom: BorderSide(color: Colors.black45),
                        top: BorderSide(color: Colors.black45),
                      ),
                    ),
                    child: IconButton(
                      icon: new Icon(MdiIcons.calendar),
                      onPressed: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),

      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7.5,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
                //left: BorderSide(color: Colors.black38),
              ),
            ),
            child: Center(
              child: Text(
                'Base',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor:2.0,
              ),
            ),
          ),
        ],
      ),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: 50.0,
          //height: MediaQuery.of(context).size.height / 4,
          //margin: EdgeInsets.only( bottom: 10.0),
          padding: EdgeInsets.only(left: 25.0),
          decoration: new BoxDecoration(
            //color: Colors.blue[100],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              top: BorderSide(color: Colors.black45),
              //left: BorderSide(color: Colors.black45),
            ),
          ),
          child: Center(
            child:new Container(
              //width: 20.0,
              child:new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Center(
                    child: futureWidgetBase(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7.5,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
                //left: BorderSide(color: Colors.black38),
              ),
            ),
            child: Center(
              child: Text(
                'A/C Reg',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor:1.5,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 50.0,
            //margin: EdgeInsets.only( bottom: 10.0),
            padding: EdgeInsets.only(left: 30.0),
            decoration: new BoxDecoration(
              //color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black45),
//                  left:  BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                  ),
            ),
            child: Center(
              child: new Container(
                //width: 20.0,
                child:new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                      child: futureWidgetAcReg(context),
                    ),
                    //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
                  ],
                ),
              ),
            ),
          )],
      ),
    ]);
  }

  Widget routing(context) {
    return Row(children: [
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7.5,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
              ),
            ),
            child: Center(
              child: Text(
                'Route',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor:2.0,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.154,
            height: 50.0,
            padding: EdgeInsets.only(left: 30.0),
            decoration: new BoxDecoration(
              border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                  //left: BorderSide(color: Colors.black45)

              ),
            ),
            child: Center(
              child: futureRouteText(context),
            ),
          ),
        ],
      ),
    ]);
  }

  Widget signOnTime(context) {
    return Row(children: [
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7.5,
            height: 50.0,
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(
//                bottom: BorderSide(color: Colors.black45),
//                top: BorderSide(color: Colors.black45),
              ),
            ),
            child: Center(
              child: Text(
                'Sign-On Time',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.0,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 50.0,
            //margin: EdgeInsets.only( bottom: 10.0),
            padding: EdgeInsets.only(left: 30.0),
            decoration: new BoxDecoration(
              //color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                  //left: BorderSide(color: Colors.black45),
                  right: BorderSide(color: Colors.black45)),
            ),
            child: Center(
              child: futureSignOnTimeText(context),
            ),
          ),
        ],
      ),
    ]);
  }

  Widget conductedDuringCrewBriefingHeader() {
    return Column(children: [
      Row(children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              width: MediaQuery.of(context).size.width / 1,
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
//                  bottom: BorderSide(color: Colors.black45),
//                  top: BorderSide(color: Colors.black45),
                ),
              ),
              child: Text(
                'The following was conducted during the crew briefing:',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ]),
    ]);
  }

  bool weatherRecievedAndChecked = false;
  bool secondPairOfCorrectiveLenses = false;
  bool notamsReceivedAndChecked = false;
  bool documentationReceivedAndChecked = false;
  bool flightBriefingConducted = false;

  Widget conductedCrewBriefingCheckbox(context, String title, boolValue) {
    return Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 14,
          padding: EdgeInsets.only(top: 3.0, right: 2.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              right: BorderSide(color: Colors.black45),
            ),
          ),
          child: new Checkbox(
              value: boolValue,
              onChanged: (bool value) {
                setState(() {
                  switch (title) {
                    case 'Weather received & Checked':
                      weatherRecievedAndChecked = value;
                      break;
                    case 'Second pair of corrective lenses':
                      secondPairOfCorrectiveLenses = value;
                      break;
                    case 'NOTAMS received & checked':
                      notamsReceivedAndChecked = value;
                      break;
                    case 'Documentation received & checked':
                      documentationReceivedAndChecked = value;
                      break;
                    case 'Flight Briefing Conducted':
                      flightBriefingConducted = value;
                  }
                  reload = true;
                });
              }),
        ),
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 14,
          padding: EdgeInsets.only(top: 15.0, right: 2.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              right: BorderSide(color: Colors.black45),
            ),
          ),
          child: new Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    ]);
  }


  Widget conductedCrewBriefingCheckboxList(context) {
    return new FutureBuilder(
        future: cb.readData('multi-crew'),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          if (snapshot.hasData && snapshot.data != null && reload == false) {
            var jvalue = snapshot.data;
            fd_route.text = jvalue['fd_route'];
            weatherRecievedAndChecked = jvalue['mco_weatherRecievedAndChecked'];
            secondPairOfCorrectiveLenses = jvalue['secondPairOfCorrectiveLenses'];
            notamsReceivedAndChecked = jvalue['notamsReceivedAndChecked'];
            documentationReceivedAndChecked = jvalue['documentationReceivedAndChecked'];
            flightBriefingConducted = jvalue['flightBriefingConducted'];

          }
          return Column(children: [
            Row(
              children: [
                Column(children: [
                  conductedCrewBriefingCheckbox(context, 'Weather received & Checked', weatherRecievedAndChecked),
                ]),
                Column(children: [
                  conductedCrewBriefingCheckbox(
                      context,
                      'Second pair of corrective lenses',
                      secondPairOfCorrectiveLenses),
                ]),
              ],
            ),
            Row(children: [
              Column(children: [
                conductedCrewBriefingCheckbox(
                    context, 'NOTAMS received & checked', notamsReceivedAndChecked),
              ]),
              Column(children: [
                conductedCrewBriefingCheckbox(
                    context,
                    'Documentation received & checked', documentationReceivedAndChecked),
              ]),
            ]),
            Row(children: [
              Column(children: [
                conductedCrewBriefingCheckbox(
                    context, 'Flight Briefing Conducted', flightBriefingConducted),
              ]),
            ]),
          ]);
        });
  }

  Widget discussedDuringCrewBriefingHeader() {
    return Column(children: [
      Row(children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              width: MediaQuery.of(context).size.width / 1,
              height: 50.0,
              decoration: new BoxDecoration(
                color: PrimaryColor.withOpacity(0.6),
                border: new Border(
//                  bottom: BorderSide(color: Colors.black45),
//                  top: BorderSide(color: Colors.black45),
//                  left: BorderSide(color: Colors.black45),
                ),
              ),
              child: Text(
                'The following was conducted during the crew briefing:',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ]),
    ]);
  }

  bool braceAndCommand = false;
  bool EvacuationCommand = false;
  bool Route = false;
  bool Weather = false;
  bool Delays = false;
  bool discreteCodeWord = false;
  bool flyingTime = false;
  bool knownHazards = false;

  Widget discussedCrewBriefingCheckbox(context, String title, boolValue) {
    return Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 14,
          padding: EdgeInsets.only(top: 6.0, right: 2.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              right: BorderSide(color: Colors.black45),
            ),
          ),
          child: new Checkbox(
              value: boolValue,
              onChanged: (bool value) {
                setState(() {
                  switch (title) {
                    case 'Brace Command':
                      braceAndCommand = value;
                      break;
                    case 'Evacuation Command':
                      EvacuationCommand = value;
                      break;
                    case 'Route':
                      Route = value;
                      break;
                    case 'Weather':
                      Weather = value;
                      break;
                    case 'Delays':
                      Delays = value;
                      break;
                    case 'Discrete Code Word':
                      discreteCodeWord = value;
                      break;
                    case 'Flying Time':
                      flyingTime = value;
                      break;
                    case 'Known Hazards':
                      knownHazards = value;
                  }
                  reload = true;
                });
              }),
        )
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 14,
          padding: EdgeInsets.only(top: 15.0, right: 2.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              right: BorderSide(color: Colors.black45),
            ),
          ),
          child: new Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    ]);
  }

  Widget discussedCrewBriefingCheckboxList(context) {
    return FutureBuilder(
      future : cb.readData('multi-crew'),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        if (snapshot.hasData && snapshot.data != null && reload == false) {
          var jvalue = snapshot.data;
          fd_route.text = jvalue['fd_route'];
          braceAndCommand = jvalue['Brace Command'];
          EvacuationCommand = jvalue['Evacuation Command'];
          Route = jvalue['Route'];
          Weather = jvalue['Weather'];
          Delays = jvalue['Delays'];
          discreteCodeWord = jvalue['Discrete Code Word'];
          flyingTime = jvalue['Flying Time'];
          knownHazards = jvalue['Known Hazards'];
        }
        return Column(children: [
          Row(
            children: [
              Column(children: [
                discussedCrewBriefingCheckbox(
                    context, 'Brace Command', braceAndCommand),
              ]),
              Column(children: [
                discussedCrewBriefingCheckbox(
                    context, 'Evacuation Command', EvacuationCommand),
              ]),
            ],
          ),
          Row(children: [
            Column(children: [
              discussedCrewBriefingCheckbox(context, 'Route', Route),
            ]),
            Column(children: [
              discussedCrewBriefingCheckbox(context, 'Weather', Weather),
            ]),
          ]),
          Row(children: [
            Column(children: [
              discussedCrewBriefingCheckbox(context, 'Delays', Delays),
            ]),
            Column(children: [
              discussedCrewBriefingCheckbox(
                  context, 'Discrete Code Word', discreteCodeWord),
            ]),
          ]),
          Row(children: [

            Column(children: [
              discussedCrewBriefingCheckbox(context, 'Flying Time', flyingTime),
            ]),
            Column(children: [
              discussedCrewBriefingCheckbox(
                  context, 'Known Hazards', knownHazards),
            ]),
          ]),

        ]);
      });
  }

  Widget sectorTimesWidget() {
    var crewClass = new CrewClass();
    return Column(
      children: [
        Row(
            children: [
              Container(
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 14,
                      margin: EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.only(top: 15.0),
                      decoration: new BoxDecoration(
                        color: PrimaryColor.withOpacity(0.6),
                        border: new Border(
//                          top: BorderSide(color: Colors.black45),
//                          bottom: BorderSide(color: Colors.black45),

                        ),
                      ),
                      child: new Text(
                        'Sector and Duty Times',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                ]),
              ),
            ]
        ),
        Row(
            children: [
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 14,
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: new BoxDecoration(
                      color: PrimaryColor.withOpacity(0.6),
                      border: new Border(
//                        top: BorderSide(color: Colors.black45),
//                        left: BorderSide(color: Colors.black45),

                      ),
                    ),
                    child: new Text(
                      'Local Start Time',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ]),Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 14,
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: new BoxDecoration(
                      color: PrimaryColor.withOpacity(0.6),
                      border: new Border(
                        //top: BorderSide(color: Colors.black45),
                        left: BorderSide(color: Colors.black45),


                      ),
                    ),
                    child: new Text(
                      'Sectors',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ]),Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 14,
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: new BoxDecoration(
                      color: PrimaryColor.withOpacity(0.6),
                      border: new Border(
                        //top: BorderSide(color: Colors.black45),
                        left: BorderSide(color: Colors.black45),

                      ),
                    ),
                    child: new Text(
                      'Duty Time',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ]),
            ]
        ),
        Row(
            children: [
              Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        border: new Border(
                          bottom: BorderSide(color: Colors.black45),
                          //top: BorderSide(color: Colors.black45),
                          left: BorderSide(color: Colors.black45),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                      //width: 20.0,
                      child:new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Center(
                            //child: new SizedBox(
                            //width: 70.0,
                            //height: 10.0,
                            child: new DropdownButton<Time>(
                              //iconSize: 10,
                              value: selectedTime,
                              onChanged: (Time newValue) {
                                setState(() {
                                  selectedTime = newValue;
                                  dutyTime = crewClass.getMultiCrew(selectedTime.time,selectedSector.sector);

                                });
                              },
                              items: times.map((Time user) {
                                return new DropdownMenuItem<Time>(
                                  value: user,
                                  //child: new SizedBox(
                                  //width: 70.0,
                                  child: new Text(

                                    user.time,
                                    overflow: TextOverflow.ellipsis,

                                    style: new TextStyle(color: Colors.black),
                                  ),
                                  //),
                                );
                              }).toList(),
                            ),
                            //),
                          ),
                          //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
                        ],
                      ),
                    )
                  ]
              ),
              Column(
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: BorderSide(color: Colors.black45),
                        //top: BorderSide(color: Colors.black45),
                        left: BorderSide(color: Colors.black45),
                      ),
                    ),
                    //width: 20.0,
                    width: MediaQuery.of(context).size.width / 3,
                    child:new Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Center(
                          //child: new SizedBox(
                          //width: 70.0,
                          //height: 10.0,
                          child: new DropdownButton<Sector>(
                            //iconSize: 10,
                            value: selectedSector,
                            onChanged: (Sector newValue) {
                              setState(() {
                                selectedSector = newValue;
                                dutyTimeText = crewClass.getMultiCrew(selectedTime.time,selectedSector.sector);
                                print(newValue.sector);
                              });
                              print(dutyTime);
                              print(dutyTimeText);
                            },
                            items: sectors.map((Sector user) {
                              return new DropdownMenuItem<Sector>(
                                value: user,
                                //child: new SizedBox(
                                //width: 70.0,
                                child: new Text(

                                  user.sector,
                                  overflow: TextOverflow.ellipsis,

                                  style: new TextStyle(color: Colors.black),
                                ),
                                //),
                              );
                            }).toList(),
                          ),
                          //),
                        ),
                        //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                  children: [
                    Container(
                        decoration: new BoxDecoration(
                          //color: Colors.blue[100],
                          border: new Border(
                            bottom: BorderSide(color: Colors.black45),
                            //top: BorderSide(color: Colors.black45),
                            left: BorderSide(color: Colors.black45),

                          ),
                        ),
                        height: 50.0,
                        width: MediaQuery.of(context).size.width / 3,
                        child: Center(
//                          child: Text(dutyTime ?? ''),
                          child: futureDutyTimeText(context),

                        )
                    )
                  ]
              ),
            ]
        ),
      ],
    );
  }

  Widget submitButton() {
    return Row(children: [
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

                var preFlightMap = new Map<String,dynamic>();
                preFlightMap['date_multi_crew_date'] = dateSelected;
                preFlightMap['fd_base'] = selectedBase;
                preFlightMap['ac_reg'] = selectedAcReg;
                //preFlightMap['fd_client'] = fd_client.text;
                //preFlightMap['fd_ac_reg'] = fd_ac_reg.text;
                preFlightMap['fd_route'] = fd_route.text;
                preFlightMap['fd_sign_on_time'] = fd_sign_on_time.text;
                //preFlightMap['fd_task'] = fd_task.text;
                preFlightMap['mco_weatherRecievedAndChecked'] = weatherRecievedAndChecked;
                preFlightMap['secondPairOfCorrectiveLenses'] = secondPairOfCorrectiveLenses;
                preFlightMap['notamsReceivedAndChecked'] = notamsReceivedAndChecked;
                preFlightMap['documentationReceivedAndChecked'] = documentationReceivedAndChecked;
                preFlightMap['flightBriefingConducted'] = flightBriefingConducted;
                preFlightMap['Brace Command'] = braceAndCommand;
                preFlightMap['Evacuation Command'] = EvacuationCommand;
                preFlightMap['Route'] = Route;
                preFlightMap['Weather'] = Weather;
                preFlightMap['Delays'] = Delays;
                preFlightMap['Discrete Code Word'] = discreteCodeWord;
                preFlightMap['Flying Time'] = flyingTime;
                preFlightMap['Known Hazards'] = knownHazards;
                preFlightMap['local_start_time'] = selectedTime.time;
                preFlightMap['sectors'] = selectedSector.sector;
                preFlightMap['duty_time'] = dutyTime;

                var controlBox = ControlBox();
                controlBox.saveData(preFlightMap, 'multi-crew');
                sp.setSelectedPrefs('Base', selectedBase);
                sp.setSelectedPrefs('ACREG', selectedAcReg);

                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PreflightMenu()),
                );
              })),
    ]);
  }

}