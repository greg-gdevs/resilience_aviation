import 'package:flutter/material.dart';
import 'dart:async';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class SelectedDate{
  String DateString;

  SelectedDate(this.DateString);

}

class DatePicker extends StatefulWidget {


  @override
  createState() {
    return new DatePickerState();
  }
}

class DatePickerState extends State<DatePicker> {

  DateTime selectedDate;



  @override
  void initState() {
    selectedDate = DateTime.now();
  }

  var dateSelected;

  //var newDate = TextEditingController();

  //date = selectedDate

  Widget build(BuildContext context) {


    //DateTime selectedDate = DateTime.now();

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          dateSelected = selectedDate.toString().split(' ')[0];
        });
    }

    return Row(
        children: [
          Column(
              children: [
                Container(
                  height: 50.0,

                  decoration: new BoxDecoration(
                    //color: Colors.blue[100],
                    border: new Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 10,
                  child: Center(
                    child: Text(dateSelected),
                  ),
                ),
              ]
          ),
          Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 10,
                  decoration: new BoxDecoration(
                    //color: Colors.blue[100],
                    border: new Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      //left: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: IconButton(
                    icon: new Icon(MdiIcons.calendar),
                    onPressed: () {
                      _selectDate(context);

                    },
                    //child: Text('Select date'),
                  ),
                ),
              ]
          ),
        ],
    );
  }
}