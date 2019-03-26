import 'package:flutter/material.dart';

//import '';

class Time {
  const Time(this.id,this.time);

  final String time;
  final int id;
}

class StartTimeDropDown extends StatefulWidget {
  @override
  createState() {
    return StartTimeDropDownState();
  }
}

class StartTimeDropDownState extends State<StartTimeDropDown> {

  @override
  void initState() {
    selectedTime = times[0];
  }


  Time selectedTime;
  List<Time> times = <Time>[const Time(1,'0500 - 0659'), const Time(2,"0700 - 1359"), const Time(3,'1400 - 2059'),const Time(4,'2100 - 2059'),const Time(5,'2200 - 0459'),];


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
            child: new DropdownButton<Time>(
              //iconSize: 10,
              value: selectedTime,
              onChanged: (Time newValue) {
                setState(() {
                  selectedTime = newValue;
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
    );
  }
}