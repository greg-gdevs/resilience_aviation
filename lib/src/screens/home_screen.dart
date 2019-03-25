import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  createState() {
    return new  HomeScreenState();
  }

}

class User {
  const User(this.id,this.name);

  final String name;
  final int id;
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:Column(
        children: [
          logo(),
          flightDetails(),
          crewRouteInfo(),
        ]
      ),
    );
  }

  Widget logo() {
    return new Container(
      child:Row(
          children: [
            Column(
               children: [
                 Container(
                   width: MediaQuery.of(context).size.width/4,
                   height: MediaQuery.of(context).size.height/3.5,
                   padding: EdgeInsets.only(left: 20.0, right: 20.0),

                   decoration: new BoxDecoration(
                     border: new Border(bottom : BorderSide(color: Colors.black), right : BorderSide(color: Colors.black)),
                   ),
                   child: Image.asset('images/logo/placeholder.com-logo1.jpg', scale: 2.0, width: 250.0, height: 150.0),
                 )
               ]
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Row(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/7,
                          padding: EdgeInsets.all(30.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Resilience Aviation',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                  ),
                  Row(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/7,
                          padding: EdgeInsets.all(30.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Data Capture Sheet',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0 ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                  ),
                ]
            ),
            Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0,minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 6.0, right: 2.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Document No:',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]
                  ),

                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0,minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 6.0, right: 2.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Effective Date:',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]
                  ),
                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0,minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 6.0, right: 2.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Issue:',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]
                  ),
                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0, minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 6.0, right: 2.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('Page:',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]
                  ),
                ]
            ),

            Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0,minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top:5.0, left: 30.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child:new TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter a doc number'
                            ),
                          ),
                        ),
                      ]
                  ),

                  Row(
                      children: [
                        Container(
                          //constraints:  BoxConstraints(maxWidth: 300.0,minWidth: 100.0),
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: selectDate(),
                        ),
                      ]
                  ),
                  Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.only(top: 5.0, left: 45.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),

                            child: new TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter an issue'
                              ),
                          ),

                        ),
                      ]
                  ),
                  Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/14,
                          padding: EdgeInsets.all(20.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child: new Text('1 of 1',
                            style: TextStyle(fontWeight: FontWeight.bold),

                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                  ),
                ]
            ),

          ]
      ),
    );
  }

  Widget flightDetails() {
    return new Container(
      margin: EdgeInsets.only(top:10.0, bottom:10.0),
        child: Row(
            children:[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/14,
                      //margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.only(top: 15.0),
                      decoration: new BoxDecoration(
                        color: Colors.grey[350],
                        border: new Border(bottom: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black)),
                      ),
                      child: new Text('Flight Details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),

                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]
              ),
              Column(
                  children: [
                    Container(
                      //constraints:  BoxConstraints(maxWidth: 300.0),
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/14,
                      padding: EdgeInsets.only(top: 6.0, left: 30.0),
                      decoration: new BoxDecoration(
                        border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black)),
                      ),
                      child: new TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Input Flight Details'
                        ),
                      ),
                    ),
                  ]
              ),

            ]

        ),

    );


  }

  Widget crewRouteInfo() {
    return new Column(
        children:[

          Row(
              children:[
                //Date
                Column(
                    children:[
                      Container(
                        width: MediaQuery.of(context).size.width/15,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top:20.0),
                        decoration: new BoxDecoration(
                          color: Colors.lightGreenAccent[400],
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Date',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/7.5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 7.5),
                        decoration: new BoxDecoration(
                          color: Colors.lightGreenAccent[400],
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: selectDate(),

                      ),
                    ]
                ),
                //A/C Reg
                Column(
                    children: [
                      Container(
                        //constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top:10.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Reg',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new SizedBox(
                          width: 30.0,
                          child: pilotList(),

                        ),

                      ),
                    ]
                ),
                //Base
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/10,
                      height: MediaQuery.of(context).size.height/12,
                      //margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                      ),
                      child: new Text('Base',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Base DD',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Client
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Client',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Client DD',

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //A/C Type
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Type',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Type Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),


              ]
          ),
          Row(
              children:[
                //Route
                Column(
                    children:[
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Route',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children:[
                      Container(
                        //constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Route Input',

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                ////A/C Serial
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Serial',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('A/C Serial Input ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Task
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Task',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Task Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                //Captain
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain DD',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Captain Licence
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain Licence',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Captain Licence Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                          textAlign: TextAlign.center,
                        ),
                      ),

                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature Input',
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ]
                ),
              ]
          ),
          Row(
              children:[
                //First Officer
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //First Officer Licence
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top:20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer Licence',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('First Officer Licence Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top:20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
              ]
          ),
          Row(
              children:[
                //Additional Crew
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Additional Crew Licence
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 8.5),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew Licence',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Additional Crew  Licence Input',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                //Signature
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 20.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
                Column(
                    children: [
                      Container(
                        constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: new Text('Signature Input',

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),

              ]
          ),
        ]
    );
  }

  Widget ninetyDayRecordCheck() {
    return new Row(
        children:[
          //90 Day Record Check
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  constraints:  BoxConstraints(maxWidth: 300.0),
                  width: 251.5,
                  height: 50.0,
                  //margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.only(top: 15.0),
                  decoration: new BoxDecoration(
                    color: Colors.grey[350],

                    border: new Border.all(color: Colors.black),
                  ),
                  child: new Text('90 Day Record Check',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]
          ),
          Column(
              children: [
                Container(
                  //constraints:  BoxConstraints(maxWidth: 300.0),
                  width: 515.5,
                  height: 50.0,
                  padding: EdgeInsets.only(top: 12.0),
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black),
                  ),
                  child: Text(
                    '90 Day Record Check  Input',
                    textAlign: TextAlign.center,

                  ) ,
                ),
              ]
          ),

        ]

    );
  }

  DateTime selectedDate;

  @override
  void initState() {
    selectedUser=users[0];
    selectedDate = DateTime.now();
  }

  Widget selectDate() {


    //DateTime selectedDate = DateTime.now();

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Text("${selectedDate.toLocal()}"),
          //SizedBox(height: 20.0,),
          RaisedButton(

            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
        ],
      ),
    );
  }

  //A/C Reg DopDown

  User selectedUser;
  List<User> users = <User>[const User(1,'Ruan Gouws'), const User(2,"Andrew O'Flaherty"), const User(3,'Stephan Miller'),const User(4,'Pieter Mabil'),const User(5,'Tina Drazu'),const User(6,'Justin Carawicz'),const User(7,'Zarius Prinsloo'),const User(8,'Ruan Potgieter'),const User(9,'Marc Avella'),const User(10,'Aristide Woodley'),const User(11,'Pieter Vd Westhuizen'),const User(12,'Phillip Prestorius'),];


  Widget pilotList() {

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


