import 'package:flutter/material.dart';
import 'auth.dart';
import 'MultiCrewPage.dart';
import 'SecurityChecklistMenu.dart';
import 'FlightAuthorityPage.dart';
import 'Pre-FlightVerification.dart';
//import 'SecurityChecklistMenu.dart';
import 'HomePage.dart';

class PreflightMenu extends StatelessWidget {
  PreflightMenu({this.auth, this.onSignOut});

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
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Resilience_Aviation_Logo.jpg',
                  fit: BoxFit.contain,
                  height: 32,
                ),
              ]
          ),
        actions: <Widget>[
        new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },
              child: new Text('Home',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white))
          )
    ],
    ),
      body: Container(
        child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              //Column()
                  //preFlightMenuHeader(context),
                  preFlightMenuButtons(context)
            ]
        ),
      ),
    );

    
  }
  
  Widget preFlightMenuHeader(context) {
    
    return Column(
      children:[
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1,
              child:Center(
                child: new Text('Pre-Flight',
                  textScaleFactor: 5.0,
                ),
              ),
            )
          ],
        ),
      ]

    );
  }

  Widget preFlightMenuButtons(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Crew Operations',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MultiCrewPage()),
            );
          },
        ),
        Container(margin: EdgeInsets.only(top:20.0),),
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Security Checklist',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecurityChecklistMenu()),
            );
          },
        ),
        Container(margin: EdgeInsets.only(top:20.0),),
        RaisedButton(

          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Flight Authority',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlightAuthorityPage()),
            );
          },
        ),
        Container(margin: EdgeInsets.only(top:20.0),),
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Pre-Flight Verification',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PreFlightVerificationPage()),
            );
          },
        ),
      ],
    );
  }
  
}