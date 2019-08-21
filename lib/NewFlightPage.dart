import 'package:flutter/material.dart';
import 'auth.dart';
//import 'PreFlightMenu.dart';
//import 'PostFlightMenu.dart';
import 'SingleMultiCrewMenu.dart';
import 'firebaseUtil.dart';
import 'SharedPrefs.dart';
import 'HomePage.dart';

class NewFlightPage extends StatelessWidget {
  NewFlightPage({this.auth, this.onSignOut});

  final BaseAuth auth;
  final VoidCallback onSignOut;
  final sp = new sharedPrefs();
  final fb = new firebaseUtil();

  @override
  Widget build(BuildContext context) {
    void _signOut() async {
      try {
        await auth.signOut();
        onSignOut();
      } catch (e) {
        print(e);
      }
    }

    return new Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            new FlatButton(
                onPressed: _signOut,
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white))
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Center(
            child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  resilienceLogo(context),
                  newFlightButton(context),
                ]
            ),
          ),
        )
    );
  }

  Widget resilienceLogo(context) {
    return Container(
      child: Column(
          children: [
        Container(
          width: MediaQuery.of(context).size.width / 1,
          //height: MediaQuery.of(context).size.height / 3.5,
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: new BoxDecoration(
            color: Colors.white,
//            border: new Border(
//                bottom: BorderSide(color: Colors.black),
//                right: BorderSide(color: Colors.black)),
          ),
          child: Image.asset('images/Resilience_Aviation_Logo.jpg',
              scale: 1.0, width: 250.0, height: 300),
        )
      ]),
    );
  }

  Widget newFlightButton(context) {
    return new Center(
      child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(margin: EdgeInsets.only(top:20.0),),
            RaisedButton(
              child: Container(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: new Text('New Flight',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ),
              ),
              onPressed: () {
                //TODO create new flight ID and save to prefs
                var newFlightID = fb.getFlightIDKey();
                sp.setPrefs('flightID', newFlightID);
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ]
      ),
    );
  }
}