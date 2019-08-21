import 'package:flutter/material.dart';
import 'auth.dart';
//import 'PreFlightMenu.dart';
//import 'PostFlightMenu.dart';
import 'HomePage.dart';

class SingleMultiCrewMenu extends StatelessWidget {
  SingleMultiCrewMenu({this.auth, this.onSignOut});

  final BaseAuth auth;
  final VoidCallback onSignOut;

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
          child: singleMultiCrewButtons(context),
        )
    );
  }

  Widget singleMultiCrewButtons(context) {
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
                  child: new Text('Single Crew',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,

                  ),
                ),
              ),
              onPressed: () {
               // Navigator.push(
               //   context,
               //   MaterialPageRoute(builder: (context) => HomePage()),
               // );
              },
            ),
            Container(margin: EdgeInsets.only(top:20.0),),
            RaisedButton(
              child: Container(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: new Text('Multi Crew',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,

                  ),
                ),
              ),
              onPressed: () {
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