import 'package:flutter/material.dart';

class CaptainCrewReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              'Captain/Crew Report',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 4,
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(top: 15.0, left: 30.0),
            decoration: new BoxDecoration(
              //color: Colors.blue[100],
              border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black)),
            ),
            child: new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your report ....'),
            ),
          ),
        ]),
      ]),
    );
  }
}
