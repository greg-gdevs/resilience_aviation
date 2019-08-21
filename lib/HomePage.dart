import 'package:flutter/material.dart';
import 'auth.dart';
import 'PreFlightMenu.dart';
import 'PostFlightMenu.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignOut});

  final BaseAuth auth;
  final VoidCallback onSignOut;

  @override
  Widget build(BuildContext context) {
     _signOut() async {
      try {
//        var google = await auth.signOutGoogle();
//
//        if(google) {
         // onSignOut();

        //}
//        var fireBase =  await auth.signOut();
//
//        if(fireBase) {
          //onSignOut();
        //}
        await auth.signOut();
        onSignOut();
      } catch (e) {
        print(e);
      }
    }
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
                onPressed: _signOut,
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white))
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: prePostFlightButtons(context),
        )
    );
  }

  Widget prePostFlightButtons(context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Container(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: new Text('Pre-Flight',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,

                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreflightMenu()),
                );
              },
            ),
            Container(margin: EdgeInsets.only(top:20.0),),
            RaisedButton(
              child: Container(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: new Text('Post Flight',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,

                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostflightMenu()),
                );
              },
            ),
          ]
      ),
    );
  }
}