import 'ControlBox.dart';
import 'dart:io';
import 'dart:async';
import 'SharedPrefs.dart';
import 'dart:convert';

class dropDownCache{

  Future<bool> checkConnection() async{
    var myConnection = true;
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        myConnection = true;
      }
    } on SocketException catch (_) {
      myConnection = false;
    }
    return myConnection;
  }

  Future<void> initDropDownCache() async{
    if (await checkConnection()){
      var cb = new ControlBox();
      var sp = new sharedPrefs();
      var ACREGprefs = new Map();
      var Baseprefs = new Map();
      var Clientprefs = new Map();
      var Pilotprefs = new Map();
      try {
        ACREGprefs = json.decode(await sp.getPrefs('ACREG'));
        Baseprefs = json.decode(await sp.getPrefs('Base'));
        Clientprefs = json.decode(await sp.getPrefs('Client'));
        Pilotprefs = json.decode(await sp.getPrefs('Pilot'));
      }catch (e){
        ACREGprefs['Selected'] = '';
        Baseprefs['Selected'] = '';
        Clientprefs['Selected'] = '';
        Pilotprefs['SelectedCaptian'] = '';
        Pilotprefs['SelectedFO'] = '';
      }

      var ACREG = await cb.readData('ACREG');

      var Base = await cb.readData('Base');

      var Client = await cb.readData('Client');

      var Pilot = await cb.readData('Pilot');

      ACREG['Selected'] = ACREGprefs['Selected'];
      //ACREG['Selected'] = '';
      Base['Selected'] = Baseprefs['Selected'];
      Client['Selected'] = Clientprefs['Selected'];
      Pilot['SelectedCaptian'] = Pilotprefs['SelectedCaptian'];
      Pilot['SelectedFO'] = Pilotprefs['SelectedFO'];

      var ACREGString = json.encode(ACREG);
      var baseString = json.encode(Base);
      var ClientString = json.encode(Client);
      var PilotString = json.encode(Pilot);

      await sp.setPrefs('ACREG', ACREGString);
      await sp.setPrefs('Base', baseString);
      await sp.setPrefs('Client', ClientString);
      await sp.setPrefs('Pilot', PilotString);

    }

    return null;
  }


}