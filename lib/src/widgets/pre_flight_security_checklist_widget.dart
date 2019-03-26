import 'package:flutter/material.dart';

class PreFlightSecurityChecklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Row(
        children: [
          preFlightSecurityChecklistHeading(context),
        ]
      ),
    );
  }

  Widget preFlightSecurityChecklistHeading(BuildContext context) {
    return new Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
          'Pre-Flight Security Checklist',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
