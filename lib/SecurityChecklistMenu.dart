import 'package:flutter/material.dart';
import 'auth.dart';
import 'SecurityChecklistPageExterior.dart';
import 'SecurityChecklistPageInterior.dart';
import 'HomePage.dart';

class SecurityChecklistMenu extends StatelessWidget {
  SecurityChecklistMenu({this.auth, this.onSignOut});

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
              SecurityChecklistMenuMenuButtons(context)
            ]
        ),
      ),
    );


  }

  Widget SecurityChecklistMenuMenuButtons(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Exterior',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecurityChecklistPageExterior()),
            );
          },
        ),
        Container(margin: EdgeInsets.only(top:20.0),),
        RaisedButton(
          child: Container(
            width: 300.0,
            height: 100.0,
            child: Center(
              child: new Text('Interior',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,

              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecurityChecklistPageInterior()),
            );
          },
        ),
      ],
    );
  }
}