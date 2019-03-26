import 'package:flutter/material.dart';

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
        });
    }

    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Text("${selectedDate.toLocal()}"),
          //SizedBox(height: 20.0,),
          RaisedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
        ],
      ),
    );
  }
}