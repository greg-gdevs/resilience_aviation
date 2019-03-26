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

class Base {
  const Base(this.id,this.baseName);

  final int id;
  final String baseName;
}

class Client {
  const Client(this.id,this.clientName);

  final int id;
  final String clientName;
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:ListView(
        children: [
          logo(),
          flightDetails(),
          crewRouteInfo(),
          ninetyDayRecordCheck(),
          flightChecklist(),
          //checkbox()
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
                          padding: EdgeInsets.only(top:5.0, left: 55.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),
                          child:new TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter a doc number'
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
                          padding: EdgeInsets.only(top: 5.0, left: 75.0),
                          decoration: new BoxDecoration(
                            border: new Border(bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black)),
                          ),

                            child: new TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter an issue'
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
                        color: Colors.blue[100],
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
            //Date

            children: [
              Column(
                  children:[
                    Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/12,
                      //margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.only(top:20.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border( top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/12,
                      //margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.only(top: 7.5),
                      decoration: new BoxDecoration(
                        //color: Colors.lightGreenAccent[400],
                        border: new Border( top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                      ),
                      child: selectDate(),

                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/12,
                      padding: EdgeInsets.all(20.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                      padding: EdgeInsets.only(top: 8.0, left: 30.0),
                      decoration: new BoxDecoration(
                        border: new Border(top : BorderSide(color: Colors.black)),
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
              children:[


                //A/C Reg
                Column(
                    children: [
                      Container(
                        //constraints:  BoxConstraints(maxWidth: 300.0),
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top:10.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border( top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: baseList(),
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: clientList(),
                      ),
                    ]
                ),
                //A/C Type
              ]
          ),
          Row(
              children:[
                //Route

                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/5,
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 10.0, left: 25.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), top: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 10.0, left: 25.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 10.0, left: 50.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        child: pilotList(),

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
                        padding: EdgeInsets.only(top: 10.0, left:20.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        padding: EdgeInsets.only(top: 10.0, left:30.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        child: pilotList(),

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
                        padding: EdgeInsets.only(top: 12.0, left:3.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        padding: EdgeInsets.only(top: 12.0, left: 30.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        padding: EdgeInsets.only(top: 12.0, left: 20.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        padding: EdgeInsets.only(top: 12.0, left:10.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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
                        padding: EdgeInsets.only(top: 12.0, left:30.0),
                        decoration: new BoxDecoration(
                          border: new Border(bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
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

  Widget ninetyDayRecordCheck() {
    return new Container(
        margin: EdgeInsets.only(top:10.0, bottom: 10.0),
        child: Row(
          children:[
            //90 Day Record Check
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    //constraints:  BoxConstraints(maxWidth: 300.0),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/14,
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      border: new Border(top : BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                    ),
                    child: new Text('90 Day Record Check',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

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
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: new BoxDecoration(
                      border: new Border(top : BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                    ),
                    child: Text(
                      '90 Day Record Check  Input',

                      textAlign: TextAlign.center,
                    ) ,
                  ),
                ]
            ),

          ]
        ),
      );
  }
  bool _valueDFInc = false;
  bool _valueDFNotInc = false;
  bool _valueDFNA = false;

  void _valueDFIncChanged(bool value) => setState(() => _valueDFInc = value);
  void _valueDFNotIncChanged(bool value) => setState(() => _valueDFNotInc = value);
  void _valueDFNAChanged(bool value) => setState(() => _valueDFNA = value);

  bool _valueRFFInc = false;
  bool _valueRFFNotInc = false;
  bool _valueRFFNA = false;

  void _valueRFFIncChanged(bool value) => setState(() => _valueRFFInc = value);
  void _valueRFFNotIncChanged(bool value) => setState(() => _valueRFFNotInc = value);
  void _valueRFFNAChanged(bool value) => setState(() => _valueRFFNA = value);

  bool _valueWeightAndBalances = false;
  bool _valueWeightAndBalancesInc = false;
  bool _valueWeightAndBalancesNotInc = false;

  void _valueWeightAndBalancesChanged(bool value) => setState(() => _valueWeightAndBalances = value);
  void _valueWeightAndBalancesIncChanged(bool value) => setState(() => _valueWeightAndBalancesInc = value);
  void _valueWeightAndBalancesNotIncChanged(bool value) => setState(() => _valueWeightAndBalancesNotInc = value);

  bool _valueOfpAndTold = false;
  bool _valueOfpAndToldInc = false;
  bool _valueOfpAndToldNotInc = false;

  void _valueOfpAndToldChanged(bool value) => setState(() => _valueOfpAndTold = value);
  void _valueOfpAndToldIncChanged(bool value) => setState(() => _valueOfpAndToldInc = value);
  void _valueOfpAndToldNotIncChanged(bool value) => setState(() => _valueOfpAndToldNotInc = value);

  bool _valuePassengerManifest = false;
  bool _valuePassengerManifestInc = false;
  bool _valuePassengerManifestNotInc = false;

  void _valuePassengerManifestChanged(bool value) => setState(() => _valuePassengerManifest = value);
  void _valuePassengerManifestIncChanged(bool value) => setState(() => _valuePassengerManifestInc = value);
  void _valuePassengerManifestNotIncChanged(bool value) => setState(() => _valuePassengerManifestNotInc = value);

  bool _valueCargoManifest = false;
  bool _valueCargoManifestInc = false;
  bool _valueCargoManifestNotInc = false;

  void _valueCargoManifestChanged(bool value) => setState(() => _valueCargoManifest = value);
  void _valueCargoManifestIncChanged(bool value) => setState(() => _valueCargoManifestInc = value);
  void _valueCargoManifestNotIncChanged(bool value) => setState(() => _valueCargoManifestNotInc = value);

  bool _valueWeather = false;
  bool _valueWeatherInc = false;
  bool _valueWeatherNotInc = false;

  void _valueWeatherChanged(bool value) => setState(() => _valueWeather = value);
  void _valueWeatherIncChanged(bool value) => setState(() => _valueWeatherInc = value);
  void _valueWeatherNotIncChanged(bool value) => setState(() => _valueWeatherNotInc = value);

  bool _valueNotoc = false;
  bool _valueNotocInc = false;
  bool _valueNotocNotInc = false;

  void _valueNotocChanged(bool value) => setState(() => _valueNotoc = value);
  void _valueNotocIncChanged(bool value) => setState(() => _valueNotocInc = value);
  void _valueNotocNotIncChanged(bool value) => setState(() => _valueNotocNotInc = value);

  bool _valueGenDecs = false;
  bool _valueGenDecsInc = false;
  bool _valueGenDecsNotInc = false;

  void _valueGenDecsChanged(bool value) => setState(() => _valueGenDecs = value);
  void _valueGenDecsIncChanged(bool value) => setState(() => _valueGenDecsInc = value);
  void _valueGenDecsNotIncChanged(bool value) => setState(() => _valueGenDecsNotInc = value);

  bool _valueFlightUpliftReceipts = false;
  bool _valueFlightUpliftReceiptsInc = false;
  bool _valueFlightUpliftReceiptsNotInc = false;

  void _valueFlightUpliftReceiptsChanged(bool value) => setState(() => _valueFlightUpliftReceipts = value);
  void _valueFlightUpliftReceiptsIncChanged(bool value) => setState(() => _valueFlightUpliftReceiptsInc = value);
  void _valueFlightUpliftReceiptsNotIncChanged(bool value) => setState(() => _valueFlightUpliftReceiptsNotInc = value);

  bool _valuePreFlightChecklist = false;
  bool _valuePreFlightChecklistInc = false;
  bool _valuePreFlightChecklistNotInc = false;

  void _valuePreFlightChecklistChanged(bool value) => setState(() => _valuePreFlightChecklist = value);
  void _valuePreFlightChecklistIncChanged(bool value) => setState(() => _valuePreFlightChecklistInc = value);
  void _valuePreFlightChecklistNotIncChanged(bool value) => setState(() => _valuePreFlightChecklistNotInc = value);
  Widget flightChecklist() {

    return new Container (
      child: Column(
        children: [
          Row (
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/14,
                        padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: Text(''),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/14,
                        padding: EdgeInsets.all(18.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: Text(
                          'Included',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/14,
                        padding: EdgeInsets.all(18.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: Text('Not Inlcuded',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/14,
                        padding: EdgeInsets.all(18.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                        ),
                        child: Text('N/A',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,

                        ),
                      )
                    ]
                ),
              ]
          ),
          Row(
            children: [
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      padding: EdgeInsets.only(top: 22.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: Text('Daily Flight Report',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        //color: Colors.blue[100],
                        border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueDFInc, onChanged: _valueDFIncChanged),
                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueDFNotInc, onChanged: _valueDFNotIncChanged),
                    )
                  ]
              ),
              Column(

                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueDFNA, onChanged: _valueDFNAChanged),

                    )
                  ]
              ),
            ]

          ),

          Row(
            children: [
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      padding: EdgeInsets.only(top: 22.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: Text('Resilience Flight Folio',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueRFFInc, onChanged: _valueRFFIncChanged),

                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueRFFNotInc, onChanged: _valueRFFNotIncChanged),

                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueRFFNA, onChanged: _valueRFFNAChanged),

                    )
                  ]
              ),
            ]
          ),
          Row(
            children: [
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      padding: EdgeInsets.only(top: 22.0),
                      decoration: new BoxDecoration(
                        color: Colors.blue[100],
                        border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: Text('Weight & Balances',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueWeightAndBalances, onChanged: _valueWeightAndBalancesChanged),

                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueWeightAndBalancesInc, onChanged: _valueWeightAndBalancesIncChanged),

                    )
                  ]
              ),
              Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: MediaQuery.of(context).size.height/12,
                      //padding: EdgeInsets.only(top: 12.0),
                      decoration: new BoxDecoration(
                        border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                      ),
                      child: new Checkbox(value: _valueWeightAndBalancesNotInc, onChanged: _valueWeightAndBalancesNotIncChanged),
                    )
                  ]
              ),
            ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("OFP's And TOLD Cards",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueOfpAndTold, onChanged: _valueOfpAndToldChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueOfpAndToldInc, onChanged: _valueOfpAndToldIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueOfpAndToldNotInc, onChanged: _valueOfpAndToldNotIncChanged),
                      )
                    ]
                ),
              ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("Passenger Manifest",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePassengerManifest, onChanged: _valuePassengerManifestChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePassengerManifestInc, onChanged: _valuePassengerManifestIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePassengerManifestNotInc, onChanged: _valuePassengerManifestNotIncChanged),
                      )
                    ]
                ),
              ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("Cargo Manifest",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueCargoManifest, onChanged: _valueCargoManifestChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueCargoManifestInc, onChanged: _valueCargoManifestIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueCargoManifestNotInc, onChanged: _valueCargoManifestNotIncChanged),
                      )
                    ]
                ),
              ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("Weather",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueWeather, onChanged: _valueWeatherChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueWeatherInc, onChanged: _valueWeatherIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueWeatherNotInc, onChanged: _valueWeatherNotIncChanged),
                      )
                    ]
                ),
              ]
          ),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("NOTOC",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueNotoc, onChanged: _valueNotocChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueNotocInc, onChanged: _valueNotocIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueNotocNotInc, onChanged: _valueNotocNotIncChanged),
                      )
                    ]
                ),
              ]
          ),

          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("GEN DECS",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueGenDecs, onChanged: _valueGenDecsChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueGenDecsInc, onChanged: _valueGenDecsIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueGenDecsNotInc, onChanged: _valueGenDecsNotIncChanged),
                      )
                    ]
                ),
              ]
          ),

          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("Flight Uplift Receipts",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueFlightUpliftReceipts, onChanged: _valueFlightUpliftReceiptsChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueFlightUpliftReceiptsInc, onChanged: _valueFlightUpliftReceiptsIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valueFlightUpliftReceiptsNotInc, onChanged: _valueFlightUpliftReceiptsNotIncChanged),
                      )
                    ]
                ),
              ]
          ),


          Row(
              children: [
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        padding: EdgeInsets.only(top: 22.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: Text("Pre-Flight Checklist",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePreFlightChecklist, onChanged: _valuePreFlightChecklistChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePreFlightChecklistInc, onChanged: _valuePreFlightChecklistIncChanged),

                      )
                    ]
                ),
                Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/12,
                        //padding: EdgeInsets.only(top: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                        ),
                        child: new Checkbox(value: _valuePreFlightChecklistNotInc, onChanged: _valuePreFlightChecklistNotIncChanged),
                      )
                    ]
                ),
              ]
          ),
        ]
      )
    );
  }


  DateTime selectedDate;

  @override
  void initState() {
    selectedUser = users[0];
    selectedDate = DateTime.now();
    selectedBase = bases[0];
    selectedClient = clients[0];

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

  Base selectedBase;
  List<Base> bases = <Base>[const Base(1,'HSSJ'), const Base(2,"FALA"), const Base(3,'FEFF'),const Base(4,'HEUN'),const Base(5,'HKNW'),const Base(6,'HKJK')];


  Widget baseList() {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            //child: new SizedBox(
            //width: 70.0,
            //height: 10.0,
            child: new DropdownButton<Base>(
              //iconSize: 10,
              value: selectedBase,
              onChanged: (Base newValue) {
                setState(() {
                  selectedBase = newValue;
                });
              },
              items: bases.map((Base base) {
                return new DropdownMenuItem<Base>(
                  value: base,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    base.baseName,
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

  Client selectedClient;

  List<Client> clients = <Client>[const Client(1,'VIA AIR'), const Client(2,"ACS")];

  Widget clientList() {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new DropdownButton<Client>(
              //iconSize: 10,
              value: selectedClient,
              onChanged: (Client newValue) {
                setState(() {
                  selectedClient = newValue;
                });
              },
              items: clients.map((Client client) {
                return new DropdownMenuItem<Client>(
                  value: client,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    client.clientName,
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


