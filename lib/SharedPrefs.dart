import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class sharedPrefs{

  Future<void> setPrefs(String key, String value) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
  Future<void> setSelectedPrefs(String sourceDD, String selectedValue, [pilot]) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var dataString = prefs.getString(sourceDD);
    var dataMap = json.decode(dataString);
    switch (pilot){
      case 'Cap':
        dataMap['SelectedCaptain'] = selectedValue;
        break;
      case 'FO':
        dataMap['SelectedFO'] = selectedValue;
        break;
      default:
        dataMap['Selected'] = selectedValue;
        break;
    }
    dataMap['Selected'] = selectedValue;
    prefs.setString(sourceDD, json.encode(dataMap));
  }

  Future<String> getPrefs(String key) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<List> getPrefsList(String key) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var myJson = json.decode(prefs.getString(key));
    List valueList;
    for(var keyValue in myJson.values) {
      valueList.add(keyValue);
    }
    return valueList;
  }

  Future<Map> getPrefsMap(String key) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var myJson = json.decode(prefs.getString(key));
    Map valueMap = json.decode(myJson);
    return valueMap;
  }

  Future<List<DropdownMenuItem<String>>> getPrefsDropdownList(String key) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var myJson = json.decode(prefs.getString(key));
    //print(myJson);
    var dataList = myJson['data'];
    //print(dataList);
    List<DropdownMenuItem<String>> valueList = [];
    for(var listValue in dataList) {
      //print('key:' + listValue);
      valueList.add(new DropdownMenuItem(child: new Text(listValue),value: listValue,));
      //valueList.add(keyValue);
    }
    return valueList;
  }

}
