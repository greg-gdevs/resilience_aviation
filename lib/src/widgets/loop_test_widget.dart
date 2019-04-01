import 'package:flutter/material.dart';

class NinetyDayRecordChecklist extends StatefulWidget {
  @override
  createState() {
    return NinetyDayRecordChecklistState();
  }
}

//List<Text> create90DayChecklist() {
//  List<Text> ninetyDayTexts = List<Text>();
//  for (String name in list) {
//    ninetyDayTexts.add(new Text(
//      name,
//      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//      textAlign: TextAlign.center,
//    ));
//  }
//  return ninetyDayTexts;
//}

containerFunction(context, textValue) {
  return new Column(
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 4,
          height: MediaQuery
              .of(context)
              .size
              .height / 12,
          padding: EdgeInsets.only(top: 22.0),
          decoration: new BoxDecoration(
            color: Colors.blue[100],
            border: new Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black)),
          ),
          child: Text(
            textValue,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        )
      ]
  );
}

checkBoxContainer(context, boolValue, func) {
 return new Column(
   children: [
     Container(
         width: MediaQuery.of(context).size.width / 4,
         height: MediaQuery.of(context).size.height / 12,
         //padding: EdgeInsets.only(top: 12.0),
         decoration: new BoxDecoration(
           //color: Colors.blue[100],
           border: new Border(
               top: BorderSide(color: Colors.black),
               right: BorderSide(color: Colors.black),
               bottom: BorderSide(color: Colors.black)),
         ),
         child: new Checkbox(value: boolValue, onChanged: func(boolValue))
     ),
   ]
 );

}

stateFunction(boolValue, setState) {
  return (bool value) => setState(() => boolValue = value);
}

class NinetyDayRecordChecklistState extends State<NinetyDayRecordChecklist> {


  Map<String, bool> dailyFlightValues = {
    '_valueDailyFlightIncluded': false,
    '_valueDailyFlightNotIncluded': false,
    '_valueDailyFlightNA': false,
  };

  List<String> list = [
    "Daily Flight Report",
    "Resilience Flight Folio",
    "Weight & Balances",
    "OFP's & TOLD Cards",
    "Passenger Manifest",
    "Cargo Manifest",
    "Weather",
    "NOTOC",
    "GEN DECS",
    "Fuel Uplift Receipts",
    "Pre-Flight Checklist"
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(children: [
        ninetyDayRecordCheckHeader(),
        ninetyDayRecordChecklistTableHeader(),
        ninetyDayRecordsChecklistValues()
      ]),
    );
  }

  Widget ninetyDayRecordCheckHeader() {
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(children: [
        //90 Day Record Check
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            //constraints:  BoxConstraints(maxWidth: 300.0),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 15.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: new Text(
              '90 Day Record Check',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Column(children: [
          Container(
            //constraints:  BoxConstraints(maxWidth: 300.0),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 20.0),
            decoration: new BoxDecoration(
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black)),
            ),
            child: Text(
              '90 Day Record Check  Input',
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ]),
    );
  }

  Widget ninetyDayRecordChecklistTableHeader() {
    return Container(
      child: Row(children: [
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.only(top: 12.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: Text(''),
          )
        ]),
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.all(18.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: Text(
              'Included',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )
        ]),
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.all(18.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: Text(
              'Not Inlcuded',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )
        ]),
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.all(18.0),
            decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border(
                  top: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black)),
            ),
            child: Text(
              'N/A',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ]),
    );
  }

  bool _valueDFInc = false;
  void _valueDFIncChanged(bool value) => setState(() => _valueDFInc = value);

  Widget ninetyDayRecordsChecklistValues() {

    var testList = <Column>[];

    //testList.add(containerFunction(context, 'Daily Flight Report'));
    list.forEach((listVal) {
      testList.add(containerFunction(context, listVal));

      dailyFlightValues.forEach((key,val) {

      var checkBox = checkBoxContainer(context, val, (bool value) => setState(() => key = value.toString()));
      testList.add(checkBox);

      });
    });
    return new Row(children: testList);

  }
}
