//library Logo;

import 'package:flutter/material.dart';
import 'date_picker.dart';

class Logo extends StatelessWidget {

  Widget build(BuildContext context) {
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
                          child: DatePicker(),
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

}

