import 'package:flutter/material.dart';
import 'ControlBox.dart';
import 'SharedPrefs.dart';
import 'SecurityChecklistPageInterior.dart';
//import 'dart:convert';
import 'HomePage.dart';

class SecurityChecklistPageExterior extends StatefulWidget {

  createState() {
    return new SecurityChecklistPageExteriorState();
  }
}

//class inspect_belly_from_ground_text {
//    var value;
//    inspect_belly_from_ground_text(this.value);
//  }
// class check_all_inlet_scoops_text{
//   var value;
//   check_all_inlet_scoops_text(this.value);
// }
// class other_locations_text{
//   var value;
//   other_locations_text(this.value);
// }
// class wing_rear_spar_areas_text{
//   var value;
//   wing_rear_spar_areas_text(this.value);
// }
// class trailing_edge_flaps_text{
//   var value;
//   trailing_edge_flaps_text(this.value);
// }
//class ailerons_and_hinges_text{var value;ailerons_and_hinges_text(this.value);}
//class fueling_stations_text{var value;fueling_stations_text(this.value);}
//class wheels_and_brakes_text{var value;wheels_and_brakes_text(this.value);}
//class hydraulic_installations_text{var value;hydraulic_installations_text(this.value);}
//class wheel_well_doors_and_mechanism_text{var value;wheel_well_doors_and_mechanism_text(this.value);}
//class inlet_text{var value;inlet_text(this.value);}
//class exhaust_text{var value;exhaust_text(this.value);}
//class horizontal_stabilizerand_elevator_mechanism_text{var value;horizontal_stabilizerand_elevator_mechanism_text(this.value);}
//class vertical_stabilizer_and_rudder_mechanism_text{var value;vertical_stabilizer_and_rudder_mechanism_text(this.value);}

class textValueObj{
  String value;
  textValueObj(this.value);
}

class SecurityChecklistPageExteriorState extends State<SecurityChecklistPageExterior> {

  var PrimaryColor = const Color(0xFF28a9e0);

  var sp = new sharedPrefs();
  var cb = new ControlBox();

  var securityChecklistMap = new Map<String, dynamic>();
  var reload;
  textValueObj inspect_belly_from_ground_text = new textValueObj('');
  textValueObj check_all_inlet_scoops_text = new textValueObj('');
  textValueObj other_locations_text = new textValueObj('');
  textValueObj wing_rear_spar_areas_text = new textValueObj('');
  textValueObj trailing_edge_flaps_text = new textValueObj('');
  textValueObj ailerons_and_hinges_text = new textValueObj('');
  textValueObj fueling_stations_text = new textValueObj('');
  textValueObj wheels_and_brakes_text = new textValueObj('');
  textValueObj hydraulic_installations_text = new textValueObj('');
  textValueObj wheel_well_doors_and_mechanism_text = new textValueObj('');
  textValueObj inlet_text = new textValueObj('');
  textValueObj exhaust_text = new textValueObj('');
  textValueObj horizontal_stabilizerand_elevator_mechanism_text = new textValueObj('');
  textValueObj vertical_stabilizer_and_rudder_mechanism_text = new textValueObj('');


  @override
  void initState() {
    reload = false;
    inspect_belly_from_ground_text.value = '';
    check_all_inlet_scoops_text.value = '';
    other_locations_text.value = '';
    wing_rear_spar_areas_text.value = '';
    trailing_edge_flaps_text.value = '';
    ailerons_and_hinges_text.value = '';
    fueling_stations_text.value = '';
    wheels_and_brakes_text.value = '';
    hydraulic_installations_text.value = '';
    wheel_well_doors_and_mechanism_text.value = '';
    inlet_text.value = '';
    exhaust_text.value = '';
    horizontal_stabilizerand_elevator_mechanism_text.value = '';
    vertical_stabilizer_and_rudder_mechanism_text.value = '';
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    inspect_belly_from_ground_Con.dispose();
    check_all_inlet_scoops_Con.dispose();
    other_locations_Con.dispose();
    wing_rear_spar_areas_Con.dispose();
    trailing_edge_flaps_Con.dispose();
    ailerons_and_hinges_Con.dispose();
    fueling_stations_Con.dispose();
    wheels_and_brakes_Con.dispose();
    hydraulic_installations_Con.dispose();
    wheel_well_doors_and_mechanism_Con.dispose();
    inlet_Con.dispose();
    exhaust_Con.dispose();
    horizontal_stabilizerand_elevator_mechanism_Con.dispose();
    vertical_stabilizer_and_rudder_mechanism_Con.dispose();
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
        body: ListView(children: [
          Center(
            child: Column(children: [

              airCraftExteriorHeader(context),
              airCraftExteriorCheckboxList(context),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10.0),
                        child: submitButton()
                    ),
                  ]
              ),
            ]),
          ),
        ]));
  }

  //Aircraft Exterior
  //Fuselage
  bool inspect_belly_from_ground = false;
  final inspect_belly_from_ground_Con = TextEditingController();
  bool check_all_inlet_scoops = false;
  final check_all_inlet_scoops_Con = TextEditingController();
  bool other_locations = false;
  final other_locations_Con = TextEditingController();

  //Wings
  bool wing_rear_spar_areas = false;
  final wing_rear_spar_areas_Con = TextEditingController();
  bool trailing_edge_flaps = false;
  final trailing_edge_flaps_Con = TextEditingController();
  bool ailerons_and_hinges = false;
  final ailerons_and_hinges_Con = TextEditingController();
  bool fueling_stations = false;
  final fueling_stations_Con = TextEditingController();
  bool wheels_and_brakes = false;
  final wheels_and_brakes_Con = TextEditingController();
  bool hydraulic_installations = false;
  final hydraulic_installations_Con = TextEditingController();
  bool wheel_well_doors_and_mechanism = false;
  final wheel_well_doors_and_mechanism_Con = TextEditingController();

  //Engines
  bool inlet = false;
  final inlet_Con = TextEditingController();
  bool exhaust = false;
  final exhaust_Con = TextEditingController();

  //Empennage
  bool horizontal_stabilizerand_elevator_mechanism = false;
  final horizontal_stabilizerand_elevator_mechanism_Con = TextEditingController();
  bool vertical_stabilizer_and_rudder_mechanism = false;
  final vertical_stabilizer_and_rudder_mechanism_Con = TextEditingController();



  Widget airCraftExteriorHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 1,
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
              'Aircraft Exterior',
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 2.0,
            ),
          ),
        ),
      ]),
      Row(children: [
        Column(children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 3,
            //height: 50.0,
            //padding: EdgeInsets.only(left: 10.0),
            margin: EdgeInsets.only(top: 10.0),
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
                'Items',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 6,
            //height: 50.0,
            margin: EdgeInsets.only(top: 10.0),
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(

                right: BorderSide(color: Colors.black45),
              ),
            ),
            child: Center(
              child: Text(
                'Checked',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            //height: 50.0,
            margin: EdgeInsets.only(top: 10.0),
            decoration: new BoxDecoration(
              color: PrimaryColor.withOpacity(0.6),
              border: new Border(

              ),
            ),

            child: Center(
              child: Text(
                'Remarks',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ),
        ]),
      ]),
    ]);
  }

  Widget airCraftExteriorCheckbox(context, String title, boolValue, theController, textValueObj textVar) {
    return Row(children: [
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
              value: boolValue,
              onChanged: (bool value) {
                setState(() {
                  switch (title) {
                    case 'Inspect belly from ground - all cargo and entrance doors should be closed':
                      inspect_belly_from_ground = value;
                      break;
                    case 'Check all inlet scoops, exhaust outlets and in general all openings and doors with quick opening fasteners':
                      check_all_inlet_scoops = value;
                      break;
                    case 'Other locations':
                      other_locations = value;
                      break;
                    case 'Wing rear spar areas':
                      wing_rear_spar_areas = value;
                      break;
                    case 'Trailing edge flaps':
                      trailing_edge_flaps = value;
                      break;
                    case 'Ailerons and hinges':
                      ailerons_and_hinges = value;
                      break;
                    case 'Fueling stations':
                      fueling_stations = value;
                      break;
                    case 'Wheels and brakes':
                      wheels_and_brakes = value;
                      break;
                    case 'Hydraulic Installations':
                      hydraulic_installations = value;
                      break;
                    case 'Wheel well doors and mechanism':
                      wheel_well_doors_and_mechanism = value;
                      break;
                    case 'Inlet':
                      inlet = value;
                      break;
                    case 'Exhaust':
                      exhaust = value;
                      break;
                    case 'Horizontal stabilizer and elevator mechanism':
                      horizontal_stabilizerand_elevator_mechanism = value;
                      break;
                    case 'Vertical stabilizer and rudder mechanism':
                      vertical_stabilizer_and_rudder_mechanism = value;
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
              .width / 2,
          height: MediaQuery
              .of(context)
              .size
              .height / 14,
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black45),
              right: BorderSide(color: Colors.black45),
            ),
          ),
          child: Center(
            child: new TextField(

                controller: theController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Remarks'),
                onChanged: (text){
                  textVar.value = text;

                  //theController.text = text;
                }),
          ),
        )
      ]),
    ]);
  }

  Widget airCraftExteriorCheckboxList(context) {
    return FutureBuilder(
      future: cb.readData('securityExterior'),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {

        List<textValueObj> textArrayVar = [inspect_belly_from_ground_text,
        check_all_inlet_scoops_text,
        other_locations_text,
        wing_rear_spar_areas_text,
        trailing_edge_flaps_text,
        ailerons_and_hinges_text,
        fueling_stations_text,
        wheels_and_brakes_text,
        hydraulic_installations_text,
        wheel_well_doors_and_mechanism_text,
        inlet_text,
        exhaust_text,
        horizontal_stabilizerand_elevator_mechanism_text,
        vertical_stabilizer_and_rudder_mechanism_text];
        var textArrayStrings = ['inspect_belly_from_ground_text',
        'check_all_inlet_scoops_text',
        'other_locations_text',
        'wing_rear_spar_areas_text',
        'trailing_edge_flaps_text',
        'ailerons_and_hinges_text',
        'fueling_stations_text',
        'wheels_and_brakes_text',
        'hydraulic_installations_text',
        'wheel_well_doors_and_mechanism_text',
        'inlet_text',
        'exhaust_text',
        'horizontal_stabilizerand_elevator_mechanism_text',
        'vertical_stabilizer_and_rudder_mechanism_text'];
        var textConArray = [inspect_belly_from_ground_Con,
        check_all_inlet_scoops_Con,
        other_locations_Con,
        wing_rear_spar_areas_Con,
        trailing_edge_flaps_Con,
        ailerons_and_hinges_Con,
        fueling_stations_Con,
        wheels_and_brakes_Con,
        hydraulic_installations_Con,
        wheel_well_doors_and_mechanism_Con,
        inlet_Con,
        exhaust_Con,
        horizontal_stabilizerand_elevator_mechanism_Con,
        vertical_stabilizer_and_rudder_mechanism_Con];
        if (snapshot.hasData && snapshot.data != null && reload == false) {
          print('-----------');
          print(snapshot.data);

          var jvalue = snapshot.data;
          //fd_route.text = jvalue['fd_route'];
          inspect_belly_from_ground = jvalue['inspect_belly_from_ground'];
          check_all_inlet_scoops = jvalue['check_all_inlet_scoops'];
          other_locations = jvalue['other_locations'];
          wing_rear_spar_areas = jvalue['wing_rear_spar_areas'];
          trailing_edge_flaps = jvalue['trailing_edge_flaps'];
          ailerons_and_hinges = jvalue['ailerons_and_hinges'];
          fueling_stations = jvalue['fueling_stations'];
          wheels_and_brakes = jvalue['wheels_and_brakes'];
          hydraulic_installations = jvalue['hydraulic_installations'];
          wheel_well_doors_and_mechanism = jvalue['wheel_well_doors_and_mechanism'];
          inlet = jvalue['inlet'];
          exhaust = jvalue['exhaust'];
          horizontal_stabilizerand_elevator_mechanism = jvalue['horizontal_stabilizerand_elevator_mechanism'];
          vertical_stabilizer_and_rudder_mechanism = jvalue['vertical_stabilizer_and_rudder_mechanism'];

          for ( var i = 0 ; i < textArrayStrings.length; i++){
            textConArray[i].text = jvalue[textArrayStrings[i]];
            //print(textArrayVar[i]);
          }
        }
//        var tstring = inspect_belly_from_ground_text.value;
//        if (tstring != ''){
//          print('this works1');
//        }else{
//          print('this works 2');
//        }
        for ( var j = 0 ; j < textArrayVar.length; j++){
          var tvalueObj = textArrayVar[j].value;
          if (tvalueObj != ''){
            textConArray[j].text = tvalueObj;
          }//else{
            //textConArray[j].text = '';
          //}
          //print(textConArray[j].text);
        }
        return Column(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1,
              //height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                ),
              ),

              child: Text(
                'Fuselage',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context,
                'Inspect belly from ground - all cargo and entrance doors should be closed',
                inspect_belly_from_ground, inspect_belly_from_ground_Con,inspect_belly_from_ground_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context,
                'Check all inlet scoops, exhaust outlets and in general all openings and doors with quick opening fasteners',
                check_all_inlet_scoops, check_all_inlet_scoops_Con,check_all_inlet_scoops_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(context, 'Other locations', other_locations,other_locations_Con,other_locations_text)
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1,
              //height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                ),
              ),

              child: Text(
                'Wings',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Wing rear spar areas', wing_rear_spar_areas,wing_rear_spar_areas_Con,wing_rear_spar_areas_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Trailing edge flaps', trailing_edge_flaps,trailing_edge_flaps_Con,trailing_edge_flaps_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Ailerons and hinges', ailerons_and_hinges, ailerons_and_hinges_Con,ailerons_and_hinges_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(context, 'Fueling stations', fueling_stations, fueling_stations_Con,fueling_stations_text)
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1,
              //height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                ),
              ),

              child: Text(
                'Landing Gear',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Wheels and brakes', wheels_and_brakes, wheels_and_brakes_Con,wheels_and_brakes_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Hydraulic Installations', hydraulic_installations, hydraulic_installations_Con,hydraulic_installations_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Wheel well doors and mechanism',
                wheel_well_doors_and_mechanism, wheel_well_doors_and_mechanism_Con,wheel_well_doors_and_mechanism_text)
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1,
              //height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                ),
              ),

              child: Text(
                'Engines',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ]),
          Row(children: [airCraftExteriorCheckbox(context, 'Inlet', inlet, inlet_Con,inlet_text)]),
          Row(children: [airCraftExteriorCheckbox(context, 'Exhaust', exhaust, exhaust_Con,exhaust_text)]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1,
              //height: 50.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black45),
                  top: BorderSide(color: Colors.black45),
                ),
              ),
              child: Text(
                'Empennage',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2.0,
              ),
            ),
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Horizontal stabilizer and elevator mechanism',
                horizontal_stabilizerand_elevator_mechanism, horizontal_stabilizerand_elevator_mechanism_Con,horizontal_stabilizerand_elevator_mechanism_text)
          ]),
          Row(children: [
            airCraftExteriorCheckbox(
                context, 'Vertical stabilizer and rudder mechanism',
                vertical_stabilizer_and_rudder_mechanism, vertical_stabilizer_and_rudder_mechanism_Con,vertical_stabilizer_and_rudder_mechanism_text)
          ]),
        ]);

      }
    );
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
                  onPressed: () {
                    securityChecklistMap['inspect_belly_from_ground'] =
                        inspect_belly_from_ground;
                    securityChecklistMap['inspect_belly_from_ground_text'] = inspect_belly_from_ground_Con.text;
                    securityChecklistMap['check_all_inlet_scoops'] =
                        check_all_inlet_scoops;
                    securityChecklistMap['check_all_inlet_scoops_text'] = check_all_inlet_scoops_Con.text;
                    securityChecklistMap['other_locations'] = other_locations;
                    securityChecklistMap['other_locations_text'] = other_locations_Con.text;
                    securityChecklistMap['wing_rear_spar_areas'] =
                        wing_rear_spar_areas;
                    securityChecklistMap['wing_rear_spar_areas_text'] = wing_rear_spar_areas_Con.text;
                    securityChecklistMap['trailing_edge_flaps'] =
                        trailing_edge_flaps;
                    securityChecklistMap['trailing_edge_flaps_text'] = trailing_edge_flaps_Con.text;
                    securityChecklistMap['ailerons_and_hinges'] =
                        ailerons_and_hinges;
                    securityChecklistMap['ailerons_and_hinges_text'] = ailerons_and_hinges_Con.text;
                    securityChecklistMap['fueling_stations'] = fueling_stations;
                    securityChecklistMap['fueling_stations_text'] = fueling_stations_Con.text;
                    securityChecklistMap['wheels_and_brakes'] =
                        wheels_and_brakes;
                    securityChecklistMap['wheels_and_brakes_text'] = wheels_and_brakes_Con.text;
                    securityChecklistMap['hydraulic_installations'] =
                        hydraulic_installations;
                    securityChecklistMap['hydraulic_installations_text'] = hydraulic_installations_Con.text;
                    securityChecklistMap['wheel_well_doors_and_mechanism'] = wheel_well_doors_and_mechanism;
                    securityChecklistMap['wheel_well_doors_and_mechanism_text'] = wheel_well_doors_and_mechanism_Con.text;
                    securityChecklistMap['inlet'] = inlet;
                    securityChecklistMap['inlet_text'] = inlet_Con.text;
                    securityChecklistMap['exhaust'] = exhaust;
                    securityChecklistMap['exhaust_text'] = exhaust_Con.text;
                    securityChecklistMap['horizontal_stabilizerand_elevator_mechanism'] =
                        horizontal_stabilizerand_elevator_mechanism;
                    securityChecklistMap['horizontal_stabilizerand_elevator_mechanism_text'] =
                        horizontal_stabilizerand_elevator_mechanism_Con.text;
                    securityChecklistMap['vertical_stabilizer_and_rudder_mechanism'] =
                        vertical_stabilizer_and_rudder_mechanism;
                    securityChecklistMap['vertical_stabilizer_and_rudder_mechanism_text'] =
                        vertical_stabilizer_and_rudder_mechanism_Con.text;


                    //validationProcess(securityChecklistMap);
                    //String sendString = json.encode(securityChecklistMap);
                    var controlBox = new ControlBox();
                    controlBox.saveData(securityChecklistMap, 'securityExterior');
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecurityChecklistPageInterior()
                      ),
                    );
                  }
                  ),
          ),
        ]
    );
  }
}