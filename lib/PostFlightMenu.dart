import 'package:flutter/material.dart';
import 'auth.dart';
import 'CaptainReport.dart';
import 'PostFlightVerification.dart';
import 'HomePage.dart';

class PostflightMenu extends StatelessWidget {
  PostflightMenu({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: new Text('Home',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white)))
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // preFlightMenuHeader(context),
              preFlightMenuButtons(context)
            ]),
      ),
    );
  }

  Widget preFlightMenuButtons(context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text(
                'Captains Report',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaptainReportPage()),
            );
          },
        ),
        Container(margin: EdgeInsets.only(top: 20.0)),
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text(
                'Post Flight Verification',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PostFlightVerificationPage()),
            );
          },
        ),
      ],
    );
  }
}
