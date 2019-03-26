import 'package:flutter/material.dart';
import 'pilot_dropdown_widget.dart';
import 'client_dropdown_widget.dart';
import 'base_dropdown_widget.dart';
import 'date_picker.dart';

class CrewRouteInfo extends StatelessWidget {

  Widget build(BuildContext context) {
    return new Column(
        children: [
          Row(
            //Date

              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Date',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 7.5),
                        decoration: new BoxDecoration(
                          border: new Border(
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: DatePicker(),

                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Route',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        //constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 8.0, left: 30.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              top: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your route'
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children: [
                //A/C Reg
                Column(
                    children: [
                      Container(
                        //constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 10.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Reg',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        decoration: new BoxDecoration(
                          border: new Border(
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new SizedBox(
                          width: 30.0,
                          child:  new TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter A/C Reg'
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                //Base
                Column(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 10,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 12,
                      //margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black)),
                      ),
                      child: new Text('Base',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: BaseDropDown(),
                      ),
                    ]
                ),
                //Client
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Client',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: ClientDropDown(),
                      ),
                    ]
                ),
                //A/C Type
              ]
          ),
          Row(
              children: [
                //Route

                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Type',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 10.0, left: 25.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter A/C Type'
                          ),
                        ),
                      ),
                    ]
                ),
                ////A/C Serial
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Serial',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 10.0, left: 25.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter A/C Serial'
                          ),
                        ),
                      ),
                    ]
                ),
                //Task
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Task',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 10.0, left: 50.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Task'
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children: [
                //Captain
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: PilotDropDown(),
                      ),
                    ]
                ),
                //Captain Licence
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain Licence',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 10.0, left: 20.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Captain Licence'
                          ),
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 10.0, left: 30.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Sign'
                          ),
                        ),
                      ),

                    ]
                ),
              ]
          ),
          Row(
              children: [
                //First Officer
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: PilotDropDown(),
                      ),
                    ]
                ),
                //First Officer Licence
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer Licence',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0, left: 3.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter First Officer Licence'
                          ),
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0, left: 30.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Sign'
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children: [
                //Additional Crew
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0, left: 20.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Additional Crew'
                          ),
                        ),
                      ),
                    ]
                ),
                //Additional Crew Licence
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 8.5),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew Licence',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 5,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0, left: 10.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Additional Crew Licence'
                          ),
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 12,
                        padding: EdgeInsets.only(top: 12.0, left: 30.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Sign'
                          ),
                        ),
                      ),
                    ]
                ),

              ]
          ),
        ]
    );
  }

}