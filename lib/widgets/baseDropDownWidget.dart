import 'package:flutter/material.dart';
import '../MultiCrewPage.dart';

class Base {
  const Base(this.id,this.baseName);

  final int id;
  final String baseName;
}


class BaseDropDown extends StatefulWidget {
  //final ValueChanged<String> onChanged;
  final VoidCallback onChanged;

  BaseDropDown({Key key, this.onChanged}) : super(key:key);

  @override
  createState() {
    return BaseDropDownState();
  }

}

class BaseDropDownState extends State<BaseDropDown> {

  @override
  void initState() {
    selectedBase = bases[0];

  }

  receiveData(String data){
    print("your text here : $data");
  }

  Base selectedBase;
  List<Base> bases = <Base>[const Base(1,'HSSJ'), const Base(2,"FALA"), const Base(3,'FEFF'),const Base(4,'HEUN'),const Base(5,'HKNW'),const Base(6,'HKJK')];

  Widget build(BuildContext context) {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            //child: new SizedBox(
            //width: 70.0,
            //height: 10.0,
            child: new DropdownButton<Base>(
              //iconSize: 10,
              value: selectedBase,
              onChanged: (Base newValue) {
                setState(() {
                  selectedBase = newValue;
                });
                //widget.onChanged('Passed this value');
              },
              items: bases.map((Base base) {
                return new DropdownMenuItem<Base>(
                  value: base,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    base.baseName,
                    overflow: TextOverflow.ellipsis,

                    style: new TextStyle(color: Colors.black),
                  ),
                  //),
                );
              }).toList(),
            ),
            //),
          ),
          //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
        ],
      ),
    );
  }

}