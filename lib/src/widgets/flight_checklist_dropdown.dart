import 'package:flutter/material.dart';

class FlightCheckList extends StatefulWidget {
  @override
  createState () {
    return FlightCheckListState();
  }
}

class FlightCheckListState extends State<FlightCheckList> {

  bool _valueDFInc = false;
  bool _valueDFNotInc = false;
  bool _valueDFNA = false;

  void _valueDFIncChanged(bool value) => setState(() => _valueDFInc = value);
  void _valueDFNotIncChanged(bool value) => setState(() => _valueDFNotInc = value);
  void _valueDFNAChanged(bool value) => setState(() => _valueDFNA = value);

  bool _valueRFFInc = false;
  bool _valueRFFNotInc = false;
  bool _valueRFFNA = false;

  void _valueRFFIncChanged(bool value) => setState(() => _valueRFFInc = value);
  void _valueRFFNotIncChanged(bool value) => setState(() => _valueRFFNotInc = value);
  void _valueRFFNAChanged(bool value) => setState(() => _valueRFFNA = value);

  bool _valueWeightAndBalances = false;
  bool _valueWeightAndBalancesInc = false;
  bool _valueWeightAndBalancesNotInc = false;

  void _valueWeightAndBalancesChanged(bool value) => setState(() => _valueWeightAndBalances = value);
  void _valueWeightAndBalancesIncChanged(bool value) => setState(() => _valueWeightAndBalancesInc = value);
  void _valueWeightAndBalancesNotIncChanged(bool value) => setState(() => _valueWeightAndBalancesNotInc = value);

  bool _valueOfpAndTold = false;
  bool _valueOfpAndToldInc = false;
  bool _valueOfpAndToldNotInc = false;

  void _valueOfpAndToldChanged(bool value) => setState(() => _valueOfpAndTold = value);
  void _valueOfpAndToldIncChanged(bool value) => setState(() => _valueOfpAndToldInc = value);
  void _valueOfpAndToldNotIncChanged(bool value) => setState(() => _valueOfpAndToldNotInc = value);

  bool _valuePassengerManifest = false;
  bool _valuePassengerManifestInc = false;
  bool _valuePassengerManifestNotInc = false;

  void _valuePassengerManifestChanged(bool value) => setState(() => _valuePassengerManifest = value);
  void _valuePassengerManifestIncChanged(bool value) => setState(() => _valuePassengerManifestInc = value);
  void _valuePassengerManifestNotIncChanged(bool value) => setState(() => _valuePassengerManifestNotInc = value);

  bool _valueCargoManifest = false;
  bool _valueCargoManifestInc = false;
  bool _valueCargoManifestNotInc = false;

  void _valueCargoManifestChanged(bool value) => setState(() => _valueCargoManifest = value);
  void _valueCargoManifestIncChanged(bool value) => setState(() => _valueCargoManifestInc = value);
  void _valueCargoManifestNotIncChanged(bool value) => setState(() => _valueCargoManifestNotInc = value);

  bool _valueWeather = false;
  bool _valueWeatherInc = false;
  bool _valueWeatherNotInc = false;

  void _valueWeatherChanged(bool value) => setState(() => _valueWeather = value);
  void _valueWeatherIncChanged(bool value) => setState(() => _valueWeatherInc = value);
  void _valueWeatherNotIncChanged(bool value) => setState(() => _valueWeatherNotInc = value);

  bool _valueNotoc = false;
  bool _valueNotocInc = false;
  bool _valueNotocNotInc = false;

  void _valueNotocChanged(bool value) => setState(() => _valueNotoc = value);
  void _valueNotocIncChanged(bool value) => setState(() => _valueNotocInc = value);
  void _valueNotocNotIncChanged(bool value) => setState(() => _valueNotocNotInc = value);

  bool _valueGenDecs = false;
  bool _valueGenDecsInc = false;
  bool _valueGenDecsNotInc = false;

  void _valueGenDecsChanged(bool value) => setState(() => _valueGenDecs = value);
  void _valueGenDecsIncChanged(bool value) => setState(() => _valueGenDecsInc = value);
  void _valueGenDecsNotIncChanged(bool value) => setState(() => _valueGenDecsNotInc = value);

  bool _valueFlightUpliftReceipts = false;
  bool _valueFlightUpliftReceiptsInc = false;
  bool _valueFlightUpliftReceiptsNotInc = false;

  void _valueFlightUpliftReceiptsChanged(bool value) => setState(() => _valueFlightUpliftReceipts = value);
  void _valueFlightUpliftReceiptsIncChanged(bool value) => setState(() => _valueFlightUpliftReceiptsInc = value);
  void _valueFlightUpliftReceiptsNotIncChanged(bool value) => setState(() => _valueFlightUpliftReceiptsNotInc = value);

  bool _valuePreFlightChecklist = false;
  bool _valuePreFlightChecklistInc = false;
  bool _valuePreFlightChecklistNotInc = false;

  void _valuePreFlightChecklistChanged(bool value) => setState(() => _valuePreFlightChecklist = value);
  void _valuePreFlightChecklistIncChanged(bool value) => setState(() => _valuePreFlightChecklistInc = value);
  void _valuePreFlightChecklistNotIncChanged(bool value) => setState(() => _valuePreFlightChecklistNotInc = value);

  @override

  Widget build(BuildContext context) {

    return new Container (
        child: Column(
            children: [
              Row (
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/14,
                            padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                            ),
                            child: Text(''),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/14,
                            padding: EdgeInsets.all(18.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                            ),
                            child: Text(
                              'Included',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/14,
                            padding: EdgeInsets.all(18.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                            ),
                            child: Text('Not Inlcuded',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/14,
                            padding: EdgeInsets.all(18.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
                            ),
                            child: Text('N/A',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,

                            ),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text('Daily Flight Report',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              //color: Colors.blue[100],
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueDFInc, onChanged: _valueDFIncChanged),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueDFNotInc, onChanged: _valueDFNotIncChanged),
                          )
                        ]
                    ),
                    Column(

                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(top : BorderSide(color: Colors.black), right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueDFNA, onChanged: _valueDFNAChanged),
                          )
                        ]
                    ),
                  ]

              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text('Resilience Flight Folio',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueRFFInc, onChanged: _valueRFFIncChanged),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueRFFNotInc, onChanged: _valueRFFNotIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueRFFNA, onChanged: _valueRFFNAChanged),

                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text('Weight & Balances',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeightAndBalances, onChanged: _valueWeightAndBalancesChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeightAndBalancesInc, onChanged: _valueWeightAndBalancesIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeightAndBalancesNotInc, onChanged: _valueWeightAndBalancesNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("OFP's And TOLD Cards",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueOfpAndTold, onChanged: _valueOfpAndToldChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueOfpAndToldInc, onChanged: _valueOfpAndToldIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueOfpAndToldNotInc, onChanged: _valueOfpAndToldNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("Passenger Manifest",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePassengerManifest, onChanged: _valuePassengerManifestChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePassengerManifestInc, onChanged: _valuePassengerManifestIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePassengerManifestNotInc, onChanged: _valuePassengerManifestNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("Cargo Manifest",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueCargoManifest, onChanged: _valueCargoManifestChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueCargoManifestInc, onChanged: _valueCargoManifestIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueCargoManifestNotInc, onChanged: _valueCargoManifestNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("Weather",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeather, onChanged: _valueWeatherChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeatherInc, onChanged: _valueWeatherIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueWeatherNotInc, onChanged: _valueWeatherNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("NOTOC",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueNotoc, onChanged: _valueNotocChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueNotocInc, onChanged: _valueNotocIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueNotocNotInc, onChanged: _valueNotocNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),

              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("GEN DECS",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueGenDecs, onChanged: _valueGenDecsChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueGenDecsInc, onChanged: _valueGenDecsIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueGenDecsNotInc, onChanged: _valueGenDecsNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),

              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("Flight Uplift Receipts",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueFlightUpliftReceipts, onChanged: _valueFlightUpliftReceiptsChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueFlightUpliftReceiptsInc, onChanged: _valueFlightUpliftReceiptsIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valueFlightUpliftReceiptsNotInc, onChanged: _valueFlightUpliftReceiptsNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),


              Row(
                  children: [
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            padding: EdgeInsets.only(top: 22.0),
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              border: new Border( right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: Text("Pre-Flight Checklist",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePreFlightChecklist, onChanged: _valuePreFlightChecklistChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePreFlightChecklistInc, onChanged: _valuePreFlightChecklistIncChanged),

                          )
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/12,
                            //padding: EdgeInsets.only(top: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(right: BorderSide(color: Colors.black), bottom : BorderSide(color: Colors.black)),
                            ),
                            child: new Checkbox(value: _valuePreFlightChecklistNotInc, onChanged: _valuePreFlightChecklistNotIncChanged),
                          )
                        ]
                    ),
                  ]
              ),
            ]
        )
    );
  }
}