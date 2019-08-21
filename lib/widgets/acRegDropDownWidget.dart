import 'package:flutter/material.dart';
//import '';

class AcReg {
  const AcReg(this.id,this.AcRegName);

  final int id;
  final String AcRegName;
}

class AcRegDropDown extends StatefulWidget {
  @override
  createState() {
    return AcRegDropDownState();
  }
}

class AcRegDropDownState extends State<AcRegDropDown> {
  @override

  void initState() {
    selectedAcReg = acReg[0];

  }

  AcReg selectedAcReg;

  List<AcReg> acReg = <AcReg>[const AcReg(1,'ZS-PFL'), const AcReg(2,"ZS-SRZ"), const AcReg(2,"ZS-PCC"), const AcReg(2,"ZS-ORK"),const AcReg(2,"ZS-OPE")];

  Widget build(BuildContext context) {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new DropdownButton<AcReg>(

              //iconSize: 10,
              value: selectedAcReg,
              onChanged: (AcReg newValue) {
                setState(() {
                  selectedAcReg = newValue;
                });

              },
              items: acReg.map((AcReg client) {
                return new DropdownMenuItem<AcReg>(
                  value: client,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    client.AcRegName,
                    overflow: TextOverflow.ellipsis,

                    style: new TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
          //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
        ],
      ),
    );
  }
}