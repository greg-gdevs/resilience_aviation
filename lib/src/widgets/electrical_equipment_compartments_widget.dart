import 'package:flutter/material.dart';

class ElectricalEquipmentCompartments extends StatefulWidget {
  @override
  createState() {
    return ElectricalEquipmentCompartmentsState();
  }
}

class ElectricalEquipmentCompartmentsState extends State<ElectricalEquipmentCompartments> {

  @override

  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          electricalEquipmentCompartmentsHeader(),
          electricalEquipmentCompartmentsHeaderCheckBoxes(),
          remarksWidget()
        ]
      ),
    );
  }

  Widget electricalEquipmentCompartmentsHeader() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 14,
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: EdgeInsets.only(top: 15.0),
          decoration: new BoxDecoration(
            color: Colors.blue[100],
            border: new Border(
                bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black)),
          ),
          child: new Text(
            'Electrical/Equipment Compartments',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }

  bool _valueMainElectronic = false;
  void _valueMainElectronicChanged(bool value) =>
      setState(() => _valueMainElectronic = value);

  bool _valueForwardElectronic = false;
  void _valueForwardElectronicChanged(bool value) =>
      setState(() => _valueForwardElectronic = value);

  bool _valueDoNotRemove = false;
  void _valueDoNotRemoveChanged(bool value) =>
      setState(() => _valueDoNotRemove = value);

  bool _valueCheckAllAreasMain = false;
  void _valueCheckAllAreasMainChanged(bool value) =>
      setState(() => _valueCheckAllAreasMain = value);

  bool _valueCheckAllAreasForward = false;
  void _valueCheckAllAreasForwardChanged(bool value) =>
      setState(() => _valueCheckAllAreasForward = value);


  Widget electricalEquipmentCompartmentsHeaderCheckBoxes() {

    return Column(
      children: [
        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Main Electronic',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueMainElectronic,
                  onChanged: _valueMainElectronicChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Forward Electronic',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueForwardElectronic,
                  onChanged: _valueForwardElectronicChanged),
            )
          ]),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Do not remove equipment unless obvious signs of interference',
                style: TextStyle(fontSize: 15, ),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueDoNotRemove,
                  onChanged: _valueDoNotRemoveChanged),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: Text(
                'Check all areas, floor, walls',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            )
          ]),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black)),
              ),
              child: new Checkbox(
                  value: _valueCheckAllAreasMain,
                  onChanged: _valueCheckAllAreasMainChanged),
            )
          ]),
        ]),

        Row(children: [
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    ),
              ),
              child: Text(
                'Check all areas, floor, walls',
                style: TextStyle(fontSize: 20, ),
                textAlign: TextAlign.center,
              ),
            )
          ]),

          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 12,
              //padding: EdgeInsets.only(top: 12.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                    right: BorderSide(color: Colors.black),
                    ),
              ),
              child: new Checkbox(
                  value: _valueCheckAllAreasForward,
                  onChanged: _valueCheckAllAreasForwardChanged),
            )
          ]),
        ]),
      ]
    );

  }

  Widget remarksWidget() {
    return Container(
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 14,
            //margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              'Remarks',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 4,
            //margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0, left: 30.0),
            decoration: new BoxDecoration(
              //color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  ),
            ),
            child: new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your remarks ....'),
            ),
          ),
        ]),
      ]),
    );
  }

}