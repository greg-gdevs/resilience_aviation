import 'package:flutter/material.dart';
import 'auth.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
//import 'SingleMultiCrewMenu.dart';
import 'NewFlightPage.dart';
//import 'PreFlightMenu.dart';
import 'SharedPrefs.dart';


class RootPage extends StatefulWidget {
  RootPage({Key key, this.auth}) : super(key: key);
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  notSignedIn,
  signedIn,

}

enum FlightIdStatus{
  isFlightId,
  isNotFlightID
}

class _RootPageState extends State<RootPage> {

  AuthStatus authStatus = AuthStatus.notSignedIn;
  FlightIdStatus flightStatus = FlightIdStatus.isNotFlightID;

  //FlightIdStatus flightIdStatus.isFlightId;

  Future <bool> checkFlightId() async {
    var flightId = new sharedPrefs();
    var flightID = '';
    bool flightIdtrue = false;
    try {
      flightID = await flightId.getPrefs('flightID');
    }catch (e){
      await flightId.setPrefs('flightID', '');
    }
    print(flightID);
    if (flightID != ''){
      flightIdtrue = true;
    }
    return flightIdtrue;
  }


  //var thisFlightId = checkFlightId();

  initState() {
    //flightId.
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        //authStatus = userId != null ? AuthStatus.signedIn : AuthStatus.notSignedIn;

        if(userId != null ){
          authStatus = AuthStatus.signedIn;
        }else{
          authStatus = AuthStatus.notSignedIn;
        }



      });
    });

    checkFlightId().then((value){
        if(value == true){
          flightStatus = FlightIdStatus.isFlightId;
          print('in if statement');
        }else{
          flightStatus = FlightIdStatus.isNotFlightID;
          print('in else statement');

        }
      });

  }

  void _updateAuthStatus(AuthStatus status) {
    setState(() {
      authStatus = status;
    });
  }

    @override
    Widget build(BuildContext context) {
      if (authStatus == AuthStatus.notSignedIn) {
        return new LoginPage(
          title: 'Flutter Login',
          auth: widget.auth,
          onSignIn: () => _updateAuthStatus(AuthStatus.signedIn),
        );
      }

      if (authStatus == AuthStatus.signedIn && flightStatus == FlightIdStatus.isNotFlightID) {
        return new NewFlightPage(
            auth: widget.auth,
            onSignOut: () => _updateAuthStatus(AuthStatus.notSignedIn)
        );
      }
      if (authStatus == AuthStatus.signedIn && flightStatus == FlightIdStatus.isFlightId) {
        return new HomePage(
               auth: widget.auth,
             onSignOut: () => _updateAuthStatus(AuthStatus.notSignedIn)
        );
      }
      //return new Container(width: 0.0, height: 0.0);
    }

  }
//}