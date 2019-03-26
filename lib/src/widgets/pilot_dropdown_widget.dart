import 'package:flutter/material.dart';
//import '';

class User {
  const User(this.id,this.name);

  final String name;
  final int id;
}

class PilotDropDown extends StatefulWidget {
  @override
  createState() {
    return PilotDropDownState();
  }
}

class PilotDropDownState extends State<PilotDropDown> {

  @override
  void initState() {
    selectedUser = users[0];
  }


  User selectedUser;
  List<User> users = <User>[const User(1,'Ruan Gouws'), const User(2,"Andrew O'Flaherty"), const User(3,'Stephan Miller'),const User(4,'Pieter Mabil'),const User(5,'Tina Drazu'),const User(6,'Justin Carawicz'),const User(7,'Zarius Prinsloo'),const User(8,'Ruan Potgieter'),const User(9,'Marc Avella'),const User(10,'Aristide Woodley'),const User(11,'Pieter Vd Westhuizen'),const User(12,'Phillip Prestorius'),];


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
            child: new DropdownButton<User>(
              //iconSize: 10,
              value: selectedUser,
              onChanged: (User newValue) {
                setState(() {
                  selectedUser = newValue;
                });
              },
              items: users.map((User user) {
                return new DropdownMenuItem<User>(
                  value: user,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    user.name,
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