import 'package:flutter/material.dart';

class Flight_Folio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(children: [
          flightFolioHeader(context),
        ]),
        Row(children: [
          flightFolio(context),
        ]),
      ]),
    );
  }

  Widget flightFolioHeader(context) {
    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black)),
              ),
              child: new Text(
                'Flight Folio',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                //color: Colors.blue[100],
                border: new Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                ),
              ),
              child: new Text(
                'No.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 14,
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(top: 15.0),
              decoration: new BoxDecoration(
                border: new Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black)),
              ),
              child: new Text(
                '',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ]));
  }

  Widget flightFolio(context) {

    return Container(
      child: Row(
        children:[
          Column(
            children: [
              Column(
                children:[
                  Row(
                    children:[
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 14,
                        //margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(top: 15.0),
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          border: new Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black)),
                        ),
                        child: new Text(
                          'Totals Brought Forward',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                  ),

                ]
              ),
            ]

          ),
          Column(
            children:[
              Column(
                children: [
                  Row(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 14,
                          //margin: EdgeInsets.all(12.0),
                          padding: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                            color: Colors.blue[100],
                            border: new Border(
                                left: BorderSide(color: Colors.black),
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black)),
                          ),
                          child: new Text(
                            'Maintenance',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                  ),
                ]
              ),
            ]
          ),
        ]
      ),
    );
  }
}
