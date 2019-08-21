import 'package:flutter/material.dart';
//import 'LoginPage.dart';
import 'root_page.dart';
import 'auth.dart';
import 'firebaseUtil.dart';
import 'dropDownCache.dart';
import 'ControlBox.dart';

void main() {
  new firebaseUtil().firebaseSetup();
  new dropDownCache().initDropDownCache();
  //new ControlBox().cleanUp();
  runApp(new day90());

}

int index = 0;

class day90 extends StatelessWidget {
  final PrimaryColor = const Color(0xFF184177);

  @override
  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Stack(
//        children: <Widget>[
//          new Offstage(
//            offstage: index != 0,
//
//          )
//        ],
//      ),
//    )
    return new MaterialApp(
      title: 'day90',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: new RootPage(auth: new Auth()),
    );

  }


}