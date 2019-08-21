import 'package:flutter/material.dart';
import 'PreFlightMenu.dart';
//import 'firebaseUtil.dart';
import 'SharedPrefs.dart';
//import 'JSONUtil.dart';
import 'ControlBox.dart';
import 'HomePage.dart';
//import 'dart:convert';



class SecurityChecklistPageInterior extends StatefulWidget {
  //final String flightmap;
  //SecurityChecklistPageInterior({this.flightmap});
  @override
  createState() {
    return new SecurityChecklistPageInteriorState();
  }
}

class textValueObj{
  String value;
  textValueObj(this.value);
}

class SecurityChecklistPageInteriorState extends State<SecurityChecklistPageInterior> {
  var PrimaryColor = const Color(0xFF28a9e0);

  var sp = new sharedPrefs();
  var cb = new ControlBox();
  var reload;
  textValueObj seats_text = new textValueObj('');
  textValueObj entire_floor_text = new textValueObj('');
  textValueObj ceiling_side_rear_wall_text = new textValueObj('');
  textValueObj pedastel_textsoles_text = new textValueObj('');
  textValueObj windshield_text = new textValueObj('');
  textValueObj instrument_and_switch_panels_text = new textValueObj('');
  textValueObj circuit_breaker_fuse_panels_text = new textValueObj('');
  textValueObj ash_trays_text = new textValueObj('');
  textValueObj crew_oxygen_masks_stowage_text = new textValueObj('');
  textValueObj seats_and_stowage_under_seats_text = new textValueObj('');
  textValueObj floor_text = new textValueObj('');
  textValueObj side_walls_including_windows_text = new textValueObj('');
  textValueObj light_recesses_text = new textValueObj('');
  textValueObj life_jacket_stowages_text = new textValueObj('');
  textValueObj inspect_internal_area_text = new textValueObj('');
  textValueObj emergency_exit_door_text = new textValueObj('');
  textValueObj check_all_areas_floor_walls_ceilings_text = new textValueObj('');
  textValueObj check_all_areas_floor_walls_main_electronic_text = new textValueObj('');
  textValueObj check_all_areas_floor_walls_forward_electronic_text = new textValueObj('');


  @override
  void initState() {
    reload = false;
    seats_text.value = '';
    entire_floor_text.value = '';
    ceiling_side_rear_wall_text.value = '';
    pedastel_textsoles_text.value = '';
    windshield_text.value = '';
    instrument_and_switch_panels_text.value = '';
    circuit_breaker_fuse_panels_text.value = '';
    ash_trays_text.value = '';
    crew_oxygen_masks_stowage_text.value = '';
    seats_and_stowage_under_seats_text.value = '';
    floor_text.value = '';
    side_walls_including_windows_text.value = '';
    light_recesses_text.value = '';
    life_jacket_stowages_text.value = '';
    inspect_internal_area_text.value = '';
    emergency_exit_door_text.value = '';
    check_all_areas_floor_walls_ceilings_text.value = '';
    check_all_areas_floor_walls_main_electronic_text.value = '';
    check_all_areas_floor_walls_forward_electronic_text.value = '';
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    seats_Con.dispose();
    entire_floor_Con.dispose();
    ceiling_side_rear_wall_Con.dispose();
    pedastel_consoles_Con.dispose();
    windshield_Con.dispose();
    instrument_and_switch_panels_Con.dispose();
    circuit_breaker_fuse_panels_Con.dispose();
    ash_trays_Con.dispose();
    crew_oxygen_masks_stowage_Con.dispose();
    seats_and_stowage_under_seats_Con.dispose();
    floor_Con.dispose();
    side_walls_including_windows_Con.dispose();
    light_recesses_Con.dispose();
    life_jacket_stowages_Con.dispose();
    inspect_internal_area_Con.dispose();
    emergency_exit_door_Con.dispose();
    check_all_areas_floor_walls_ceilings_Con.dispose();
    check_all_areas_floor_walls_main_electronic_Con.dispose();
    check_all_areas_floor_walls_forward_electronic_Con.dispose();
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
//              securityChecklistPageHeader(context),
              airCraftInteriorHeader(context),
              airCraftInteriorCheckboxList(context),
              //airCraftElectricalHeader(context),
              airCraftElectricalCheckboxList(context),
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

  //Flight Crew Compartment
  bool seats = false;
  bool entire_floor = false;
  bool ceiling_side_rear_wall = false;
  bool pedastel_consoles = false;
  bool windshield = false;
  bool instrument_and_switch_panels = false;
  bool circuit_breaker_fuse_panels = false;
  bool ash_trays = false;
  bool crew_oxygen_masks_stowage = false;
  //Cabin
  bool seats_and_stowage_under_seats = false;
  bool floor = false;
  bool side_walls_including_windows = false;
  bool light_recesses = false;
  bool life_jacket_stowages = false;
  bool inspect_internal_area = false;
  bool emergency_exit_door = false;

  //Cargo
  bool check_all_areas_floor_walls_ceilings = false;

  //Electrical Equipment Compartments

  //Main electronic
  bool check_all_areas_floor_walls_main_electronic = false;

  //Forward electronic
  bool check_all_areas_floor_walls_forward_electronic = false;

  final seats_Con = TextEditingController();
  final entire_floor_Con  = TextEditingController();
  final ceiling_side_rear_wall_Con  = TextEditingController();
  final pedastel_consoles_Con  = TextEditingController();
  final windshield_Con  = TextEditingController();
  final instrument_and_switch_panels_Con  = TextEditingController();
  final circuit_breaker_fuse_panels_Con  = TextEditingController();
  final ash_trays_Con  = TextEditingController();
  final crew_oxygen_masks_stowage_Con  = TextEditingController();
  final seats_and_stowage_under_seats_Con  = TextEditingController();
  final floor_Con  = TextEditingController();
  final side_walls_including_windows_Con  = TextEditingController();
  final light_recesses_Con  = TextEditingController();
  final life_jacket_stowages_Con  = TextEditingController();
  final inspect_internal_area_Con  = TextEditingController();
  final emergency_exit_door_Con  = TextEditingController();
  final check_all_areas_floor_walls_ceilings_Con  = TextEditingController();
  final check_all_areas_floor_walls_main_electronic_Con  = TextEditingController();
  final check_all_areas_floor_walls_forward_electronic_Con  = TextEditingController();




  Widget airCraftElectricalHeader(context) {
    return Column(children: [
      Row(children: [
        Container(
          margin: EdgeInsets.only(top:10.0, bottom:10.0),
          width: MediaQuery.of(context).size.width / 1,
          height: 50.0,
          decoration: new BoxDecoration(
            color: PrimaryColor.withOpacity(0.6),
            border: new Border(
            ),
          ),
          child: Center(
            child: Text(
              'Electrical/ Equipment Compartments',
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor:2.0,
            ),
          ),
        ),
      ]),

    ]);
  }

  Widget airCraftInteriorHeader(context) {
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
              'Aircraft Interior',
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor:2.0,
            ),
          ),
        ),
      ]),
      Row(children: [
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
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
                textScaleFactor:2.0,
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 6,
            //height: 50.0,
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
                'Checked',
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor:2.0,
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
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
                textScaleFactor:2.0,
              ),
            ),
          ),
        ]),
      ]),
    ]);
  }

  Widget airCraftInteriorCheckbox(context, String title, boolValue, theController, textValueObj textVar) {
    return Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 14,
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
            ),
          ),
        )
      ]),
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
                    case 'Seats':
                      seats = value;
                      break;
                    case 'Entire floor including area forward of the rudder pedals and beneath all seats':
                      entire_floor = value;
                      break;
                    case 'Ceiling Side Rear Wall':
                      ceiling_side_rear_wall = value;
                      break;
                    case 'Pedastal and consoles':
                      pedastel_consoles = value;
                      break;
                    case 'Windshield':
                      windshield = value;
                      break;
                    case 'All instrument and switch panels':
                      instrument_and_switch_panels = value;
                      break;
                    case 'All circuit breaker fuse panels':
                      circuit_breaker_fuse_panels = value;
                      break;
                    case 'Ash Trays':
                      ash_trays = value;
                      break;
                    case 'Crew oxygen masks stowage':
                      crew_oxygen_masks_stowage = value;
                      break;
                    case 'Seats and stowage under seats':
                      seats_and_stowage_under_seats = value;
                      break;
                    case 'Floor - do not remove carpet unles there is evidence of a foreign object underneath it':
                      floor = value;
                      break;
                    case 'Side walls including windows':
                      side_walls_including_windows = value;
                      break;
                    case 'Light recesses':
                      light_recesses = value;
                      break;
                    case 'Life jacket stowages':
                      life_jacket_stowages = value;
                      break;
                    case 'Inspect internal area':
                      inspect_internal_area = value;
                      break;
                    case 'Emergency exit door':
                      emergency_exit_door = value;
                      break;
                    case 'With containers removed, check all areas, floor, walls, and ceiling':
                      check_all_areas_floor_walls_ceilings = value;
                      break;
//                    case 'Check all areas, floor, walls of main electronics':
//                      check_all_areas_floor_walls_main_electronic = value;
//                      break;
//                    case 'Check all areas, floor, walls of forward electronics':
//                      check_all_areas_floor_walls_forward_electronic = value;
                      break;
                  }
                  reload = true;
                });
              }),
        ),
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 14,
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
                }),
          ),
        )
      ]),
    ]);
  }

  Widget airCraftElectricalCheckbox(context, String title, boolValue) {
    return Row(children: [
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 14,
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
            ),
          ),
        )
      ]),
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
                    case 'Check all areas, floor, walls of main electronics':
                      check_all_areas_floor_walls_main_electronic = value;
                      break;
                    case 'Check all areas, floor, walls of forward electronics':
                      check_all_areas_floor_walls_forward_electronic = value;
                      break;
                  }
                  reload = true;
                });
              }),
        ),
      ]),
      Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 14,
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            //color: Colors.grey[300],
            border: new Border(
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
            ),
          ),
          child: Center(
            child: new TextField(
                //controller: theController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Remarks'),
                //onChanged: (text){
                  //textVar = text;
                //}
                ),
          ),
        )
      ]),
    ]);
  }


  Widget airCraftInteriorCheckboxList(context) {
    return FutureBuilder(
      future: cb.readData('securityInterior'),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        List<textValueObj>  textArrayVar = [seats_text,
          entire_floor_text,
          ceiling_side_rear_wall_text,
          pedastel_textsoles_text,
          windshield_text,
          instrument_and_switch_panels_text,
          circuit_breaker_fuse_panels_text,
          ash_trays_text,
          crew_oxygen_masks_stowage_text,
          seats_and_stowage_under_seats_text,
          floor_text,
          side_walls_including_windows_text,
          light_recesses_text,
          life_jacket_stowages_text,
          inspect_internal_area_text,
          emergency_exit_door_text,
          check_all_areas_floor_walls_ceilings_text,
          check_all_areas_floor_walls_main_electronic_text,
          check_all_areas_floor_walls_forward_electronic_text];
        var textArrayStrings = ['seats_text',
          'entire_floor_text',
          'ceiling_side_rear_wall_text',
          'pedastel_textsoles_text',
          'windshield_text',
          'instrument_and_switch_panels_text',
          'circuit_breaker_fuse_panels_text',
          'ash_trays_text',
          'crew_oxygen_masks_stowage_text',
          'seats_and_stowage_under_seats_text',
          'floor_text',
          'side_walls_including_windows_text',
          'light_recesses_text',
          'life_jacket_stowages_text',
          'inspect_internal_area_text',
          'emergency_exit_door_text',
          'check_all_areas_floor_walls_ceilings_text',
          'check_all_areas_floor_walls_main_electronic_text',
          'check_all_areas_floor_walls_forward_electronic_text'];
        var textConArray = [seats_Con,
          entire_floor_Con,
          ceiling_side_rear_wall_Con,
          pedastel_consoles_Con,
          windshield_Con,
          instrument_and_switch_panels_Con,
          circuit_breaker_fuse_panels_Con,
          ash_trays_Con,
          crew_oxygen_masks_stowage_Con,
          seats_and_stowage_under_seats_Con,
          floor_Con,
          side_walls_including_windows_Con,
          light_recesses_Con,
          life_jacket_stowages_Con,
          inspect_internal_area_Con,
          emergency_exit_door_Con,
          check_all_areas_floor_walls_ceilings_Con,
          check_all_areas_floor_walls_main_electronic_Con,
          check_all_areas_floor_walls_forward_electronic_Con];
        if (snapshot.hasData && snapshot.data != null && reload == false) {
          print('-----------');
          print(snapshot.data);
          var jvalue = snapshot.data;
          //fd_route.text = jvalue['fd_route'];
          seats = jvalue['seats'];
          entire_floor = jvalue['entire_floor'];
          ceiling_side_rear_wall = jvalue['ceiling_side_rear_wall'];
          pedastel_consoles = jvalue['pedastel_consoles'];
          windshield = jvalue['windshield'];
          instrument_and_switch_panels = jvalue['instrument_and_switch_panels'];
          circuit_breaker_fuse_panels = jvalue['circuit_breaker_fuse_panels'];
          ash_trays = jvalue['ash_trays'];
          crew_oxygen_masks_stowage = jvalue['crew_oxygen_masks_stowage'];
          seats_and_stowage_under_seats =
                jvalue['seats_and_stowage_under_seats'];
          floor = jvalue['floor'];
          side_walls_including_windows = jvalue['side_walls_including_windows'];
          light_recesses = jvalue['light_recesses'];
          life_jacket_stowages = jvalue['life_jacket_stowages'];
          inspect_internal_area = jvalue['inspect_internal_area'];
          emergency_exit_door = jvalue['emergency_exit_door'];
          check_all_areas_floor_walls_ceilings =
          jvalue['check_all_areas_floor_walls_ceilings'];
          check_all_areas_floor_walls_main_electronic =
                jvalue['check_all_areas_floor_walls_main_electonic'];
          check_all_areas_floor_walls_forward_electronic =
                jvalue['check_all_areas_floor_walls_forward_electronic'];

          for ( var i = 0 ; i < textArrayStrings.length; i++){
            textConArray[i].text = jvalue[textArrayStrings[i]];
            //print(textArrayVar[i]);
          }
        }
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
                  'Flight Crew Compartment',
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 2.0,
                ),
              ),
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context, 'Seats', seats,seats_Con,seats_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context,
                  'Entire floor including area forward of the rudder pedals and beneath all seats',
                  entire_floor,entire_floor_Con,entire_floor_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context,
                  'Ceiling Side Rear Wall',
                  ceiling_side_rear_wall,ceiling_side_rear_wall_Con,ceiling_side_rear_wall_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Pedastal and consoles', pedastel_consoles,pedastel_consoles_Con,pedastel_textsoles_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context, 'Windshield', windshield,windshield_Con,windshield_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'All instrument and switch panels',
                  instrument_and_switch_panels,instrument_and_switch_panels_Con,instrument_and_switch_panels_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'All circuit breaker fuse panels',
                  circuit_breaker_fuse_panels,circuit_breaker_fuse_panels_Con,circuit_breaker_fuse_panels_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context, 'Ash Trays', ash_trays,ash_trays_Con,ash_trays_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Crew oxygen masks stowage',
                  crew_oxygen_masks_stowage,crew_oxygen_masks_stowage_Con,crew_oxygen_masks_stowage_text)
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
                  'Cabin',
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 2.0,
                ),
              ),
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context, 'Seats and stowage under seats',
                  seats_and_stowage_under_seats,seats_and_stowage_under_seats_Con,seats_and_stowage_under_seats_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context,
                  'Floor - do not remove carpet unles there is evidence of a foreign object underneath it',
                  floor,floor_Con,floor_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(context, 'Side walls including windows',
                  side_walls_including_windows,side_walls_including_windows_Con,side_walls_including_windows_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Light recesses', light_recesses,light_recesses_Con,light_recesses_text)
            ]),

            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Life jacket stowages', life_jacket_stowages,life_jacket_stowages_Con,life_jacket_stowages_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Inspect internal area', inspect_internal_area,inspect_internal_area_Con,inspect_internal_area_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Emergency exit door', emergency_exit_door,emergency_exit_door_Con,emergency_exit_door_text)
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
                  'Cargo',
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 2.0,
                ),
              ),
            ]),
            Row(children: [airCraftInteriorCheckbox(context, 'With containers removed, check all areas, floor, walls, and ceiling', check_all_areas_floor_walls_ceilings,check_all_areas_floor_walls_ceilings_Con,check_all_areas_floor_walls_ceilings_text)
            ]),
            airCraftElectricalHeader(context),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: MediaQuery.of(context).size.width / 1,
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
                  'Flight Crew Compartment',
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor:2.0,
                ),
              ),
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context,
                  'Check all areas, floor, walls of main electronics',
                  check_all_areas_floor_walls_main_electronic,check_all_areas_floor_walls_main_electronic_Con,check_all_areas_floor_walls_main_electronic_text)
            ]),
            Row(children: [
              airCraftInteriorCheckbox(
                  context, 'Check all areas, floor, walls of forward electronics',
                  check_all_areas_floor_walls_forward_electronic,check_all_areas_floor_walls_forward_electronic_Con, check_all_areas_floor_walls_forward_electronic_text)
            ]),
          ]);
      });
  }

  Widget airCraftElectricalCheckboxList(context) {
    return Column(children: [
//      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//        Container(
//          width: MediaQuery.of(context).size.width / 1,
//          //height: 50.0,
//          padding: EdgeInsets.only(left: 10.0),
//          margin: EdgeInsets.only(top: 10.0),
//          decoration: new BoxDecoration(
//            //color: Colors.blue[100],
//            border: new Border(
//              bottom: BorderSide(color: Colors.black45),
//              top: BorderSide(color: Colors.black45),
//            ),
//          ),
//
//          child: Text(
//            'Flight Crew Compartment',
//            //textAlign: TextAlign.center,
//            style: TextStyle(fontWeight: FontWeight.bold),
//            textScaleFactor:2.0,
//          ),
//        ),
//      ]),
//      Row(children: [
//        airCraftInteriorCheckbox(
//            context,
//            'Check all areas, floor, walls of main electronics',
//            check_all_areas_floor_walls_main_electronic,check_all_areas_floor_walls_main_electronic_Con,check_all_areas_floor_walls_main_electronic_text)
//      ]),
//      Row(children: [
//        airCraftInteriorCheckbox(
//            context, 'Check all areas, floor, walls of forward electronics',
//            check_all_areas_floor_walls_forward_electronic,check_all_areas_floor_walls_forward_electronic_Con, check_all_areas_floor_walls_forward_electronic_text)
//      ]),

    ]);
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
                    //securityChecklistMap = widget.multiSelect;
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreflightMenu()),
                    );
                    var securityChecklistMap = new Map<String, dynamic>();

                    securityChecklistMap['seats'] = seats;
                    securityChecklistMap['entire_floor'] = entire_floor;
                    securityChecklistMap['ceiling_side_rear_wall'] = ceiling_side_rear_wall;
                    securityChecklistMap['pedastel_consoles'] = pedastel_consoles;
                    securityChecklistMap['windshield'] = windshield;
                    securityChecklistMap['instrument_and_switch_panels'] = instrument_and_switch_panels;
                    securityChecklistMap['circuit_breaker_fuse_panels'] = circuit_breaker_fuse_panels;
                    securityChecklistMap['ash_trays'] = ash_trays;
                    securityChecklistMap['crew_oxygen_masks_stowage'] = crew_oxygen_masks_stowage;
                    securityChecklistMap['seats_and_stowage_under_seats'] = seats_and_stowage_under_seats;
                    securityChecklistMap['floor'] = floor;
                    securityChecklistMap['side_walls_including_windows'] = side_walls_including_windows;
                    securityChecklistMap['light_recesses'] = light_recesses;
                    securityChecklistMap['life_jacket_stowages'] = life_jacket_stowages;
                    securityChecklistMap['inspect_internal_area'] = inspect_internal_area;
                    securityChecklistMap['emergency_exit_door'] = emergency_exit_door;
                    securityChecklistMap['check_all_areas_floor_walls_ceilings'] = check_all_areas_floor_walls_ceilings;
                    securityChecklistMap['check_all_areas_floor_walls_main_electonic'] = check_all_areas_floor_walls_main_electronic;
                    securityChecklistMap['check_all_areas_floor_walls_forward_electronic'] = check_all_areas_floor_walls_forward_electronic;
                    securityChecklistMap['seats_text'] = seats_Con.text;
                    securityChecklistMap['entire_floor_text'] =  entire_floor_Con.text;
                    securityChecklistMap['ceiling_side_rear_wall_text'] = ceiling_side_rear_wall_Con.text;
                    securityChecklistMap['pedastel_textsoles_text'] = pedastel_consoles_Con.text;
                    securityChecklistMap['windshield_text'] = windshield_Con.text;
                    securityChecklistMap['instrument_and_switch_panels_text'] = instrument_and_switch_panels_Con.text;
                    securityChecklistMap['circuit_breaker_fuse_panels_text'] = circuit_breaker_fuse_panels_Con.text;
                    securityChecklistMap['ash_trays_text'] = ash_trays_Con.text;
                    securityChecklistMap['crew_oxygen_masks_stowage_text'] = crew_oxygen_masks_stowage_Con.text;
                    securityChecklistMap['seats_and_stowage_under_seats_text'] = seats_and_stowage_under_seats_Con.text;
                    securityChecklistMap['floor_text'] = floor_Con.text;
                    securityChecklistMap['side_walls_including_windows_text'] = side_walls_including_windows_Con.text;
                    securityChecklistMap['light_recesses_text'] = light_recesses_Con.text;
                    securityChecklistMap['life_jacket_stowages_text'] = life_jacket_stowages_Con.text;
                    securityChecklistMap['inspect_internal_area_text'] = inspect_internal_area_Con.text;
                    securityChecklistMap['emergency_exit_door_text'] = emergency_exit_door_Con.text;
                    securityChecklistMap['check_all_areas_floor_walls_ceilings_text'] = check_all_areas_floor_walls_ceilings_Con.text;
                    securityChecklistMap['check_all_areas_floor_walls_main_electronic_text'] = check_all_areas_floor_walls_main_electronic_Con.text;
                    securityChecklistMap['check_all_areas_floor_walls_forward_electronic_text'] = check_all_areas_floor_walls_forward_electronic_Con.text;
                    //validationProcess(securityChecklistMap);
                    //Map page1Details = json.decode(widget.flightmap);
                    //securityChecklistMap.addAll(page1Details);
                    //print(securityChecklistMap);
                    var controlBox = new ControlBox();
                    controlBox.saveData(securityChecklistMap, 'securityInterior');
                  })
          ),
        ]
    );
  }


}
