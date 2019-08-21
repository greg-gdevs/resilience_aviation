import 'package:flutter/material.dart';

//import '';

class Sector {
  const Sector(this.id,this.sector);

  final String sector;
  final int id;
}

class StartSectorDropDown extends StatefulWidget {
  @override
  createState() {
    return StartSectorDropDownState();
  }
}

class StartSectorDropDownState extends State<StartSectorDropDown> {

  @override
  void initState() {
    selectedSector = Sectors[0];
  }


  Sector selectedSector;
  List<Sector> Sectors = <Sector>[const Sector(1,'1'), const Sector(2,"2"), const Sector(3,'3'),const Sector(4,'4'),const Sector(5,'5'),const Sector(1,'6'), const Sector(2,"7"), const Sector(3,'8')];


  Widget build(BuildContext context) {

    return new Container(
      //width: 20.0,
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
                });
              },
              items: Sectors.map((Sector user) {
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
    );
  }
}