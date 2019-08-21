import 'package:flutter/material.dart';
import '../ControlBox.dart';
import 'package:after_layout/after_layout.dart';

class DropDown extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String pageName;
  DropDown(this.pageName,{ this.onChanged});
  @override
  createState() {
    return DropDownState();
  }
}

class DropDownState extends State<DropDown> {

  @override
  void initState() {
    super.initState();
    setState(() {
      this.baseMap();
    });
  }

  var controlBox = new ControlBox();
  Map baseData;
  List dataList;

  baseMap() async {

    baseData = await controlBox.readData(widget.pageName);
    dataList = baseData['data'];
    print(dataList);
  }

  String selectedValue;

  Widget build(BuildContext context) {

    return new Container(
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new DropdownButton<String>(
              hint: Text('Select'),
              value: selectedValue,

              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue;
                });
                widget.onChanged(selectedValue);
                print(selectedValue);
              },
              items: dataList.map((value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}