import 'package:flutter/material.dart';
import '../ControlBox.dart';

class FirstOfficer {
  const FirstOfficer(this.name);

  final String name;
  //final int id;
}

class FirstOfficerDropDown extends StatefulWidget {
  @override
  createState() {
    return FirstOfficerDropDownState();
  }
}

class FirstOfficerDropDownState extends State<FirstOfficerDropDown> {

  @override
  void initState() {
    selectedFirstOfficers = firstOfficers[0];
  }


  FirstOfficer selectedFirstOfficers;
  List<FirstOfficer> firstOfficers = <FirstOfficer>[const FirstOfficer('Ruan Gouws'), const FirstOfficer("Andrew O'Flaherty"), const FirstOfficer('Stephan Miller'),const FirstOfficer('Pieter Mabil'),const FirstOfficer('Tina Drazu'),const FirstOfficer('Justin Carawicz'),const FirstOfficer('Zarius Prinsloo'),const FirstOfficer('Ruan Potgieter'),const FirstOfficer('Marc Avella'),const FirstOfficer('Aristide Woodley'),const FirstOfficer('Pieter Vd Westhuizen'),const FirstOfficer('Phillip Prestorius'),];

  var preFlightMap = new Map<String,dynamic>();

  var controlBox = ControlBox();

  Widget build(BuildContext context) {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new DropdownButton<FirstOfficer>(
              value: selectedFirstOfficers,
              onChanged: (FirstOfficer newValue) {
                setState(() {
                  selectedFirstOfficers = newValue;

                });
//                preFlightMap['pilot'] = selectedFirstOfficers.name;
//                controlBox.saveData(preFlightMap, 'pre-flight verification');

              },
              items: firstOfficers.map((FirstOfficer firstOfficer) {
                return new DropdownMenuItem<FirstOfficer>(
                  value: firstOfficer,
                  child: new Text(
                    firstOfficer.name,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(color: Colors.black),
                  ),
                  //),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}