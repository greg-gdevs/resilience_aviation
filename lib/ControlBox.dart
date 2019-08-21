import 'JSONUtil.dart';
import 'firebaseUtil.dart';
import 'SharedPrefs.dart';
import 'dart:async';


class ControlBox{

  var sp = new sharedPrefs();
  var ju = new JSONUtil();
  var fb = new firebaseUtil();
  var futil = new fileUtils();

  String jsonFileName = 'day90JSONFile.json';
  String basePath = '/FlightDetails/';

  Future<bool> saveData(Map pageData, String pageName) async {
    //var dataPath = '';
   var flightID = await sp.getPrefs('flightID');
    if (flightID != null){
      //dataPath = basePath + flightID +  '/' + pageName;
      await ju.writeJSON(pageData, jsonFileName, pageName);
    }else{
      var newFlightID = fb.getFlightIDKey();
      sp.setPrefs('flightID', newFlightID);
      //dataPath = basePath + newFlightID +  '/' + pageName;
      await ju.writeJSON(pageData, jsonFileName, pageName);
    }
  print(await ju.readJSONFile(jsonFileName));
  return true;
  }

  Future<void> saveToDB() async {
    var dataPath = '';
    await sp.getPrefs('flightID').then((flightID){
      print(flightID);
      dataPath = basePath + flightID;
      print(dataPath);
    });
    var readData = await ju.readJSONFile(jsonFileName);
    //await fb.writeDB(readData, dataPath);
    //if (finalFlag = true){
     await fb.writeDB(readData, dataPath).then((_){
        cleanUp();
      });
    //}else{
      //fb.writeDB(readData, dataPath);
    //}
  }

  Future<Map> readData(String pageName) async {
    String readPath = pageName;
    Map readData;
    bool readFromDB = false;
    //var flightID = await sp.getPrefs('flightID');

    switch(pageName) {
      case 'ACREG': {
        readPath = '/Acreg';
        readFromDB = true;
      }
      break;
      case 'Base': {
        readPath = '/Base';
        readFromDB = true;
      }
      break;
      case 'Client': {
        readPath = '/Client';
        readFromDB = true;
      }
      break;
      case 'Pilot': {
        readPath = '/Pilot';
        readFromDB = true;
      }
      break;
      default: {
        readPath = pageName;
      }
      break;
    }

    if (readFromDB == true){
      readData = await fb.readFromDB(readPath);
    }else{
      readData = await ju.readJSONFile(jsonFileName,pageName);
    }

    return readData;
  }

  Future<String> uploadImage() async{
    var flightID = await sp.getPrefs('flightID');
    var fileName = flightID + '.png';
    var myFile = await futil.localFile(fileName);
    var myUrl = await fb.uploadFile(fileName, myFile);
    return myUrl;
  }

  Future<void> cleanUp() async{
    print('cleanup called');
    var flightID = await sp.getPrefs('flightID');
    var fileName = flightID + '.png';
    futil.deleteFile(fileName);
    await ju.clearJsonFile(jsonFileName);
    sp.setSelectedPrefs('Pilot', '', 'FO');
    sp.setSelectedPrefs('Pilot', '', 'Cap');
    sp.setSelectedPrefs('Client', '');
    sp.setSelectedPrefs('Base', '');
    sp.setSelectedPrefs('ACREG', '');
    sp.setPrefs('flightID', '');
  }


}