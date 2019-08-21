import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
//import 'dart:convert';
import 'package:firebase_storage/firebase_storage.dart';



class firebaseUtil {


  void firebaseSetup() {
    print('initSetup');
    FirebaseDatabase database;
    database = FirebaseDatabase.instance;
    database.setPersistenceEnabled(true);

  }

  Future<String> uploadFile(fileName, localfile) async{
    final StorageReference storageRef =
    FirebaseStorage.instance.ref().child(fileName);
    final StorageUploadTask uploadTask = storageRef.putFile(
      localfile,
      StorageMetadata(
        contentType: 'image/png',
      ),
    );
    final StorageTaskSnapshot downloadUrl =
    (await uploadTask.onComplete);
    final String url = (await downloadUrl.ref.getDownloadURL());
    print('URL Is $url');
    return url;
  }

  void saveToDB(Map insertData,String pathKey){
    final mainReference = FirebaseDatabase.instance.reference();
    mainReference.child(pathKey).set(insertData);

  }

  Future<void> writeDB(Map writeData,String pathKey) async {
    final writeRef = FirebaseDatabase.instance.reference();
    var dataMap = new Map<String,dynamic>();
    dataMap[pathKey] = writeData;
    await writeRef.update(dataMap);
  }

  void updateDBspecific(Map updateData, String FlightDetails, String flightID,{String subkey}){

    final updateDoc = FirebaseDatabase.instance.reference();
    var updates = new Map<String,dynamic>();
    updates[ '/' + FlightDetails + '/' + flightID +  '/' + subkey] = updateData;
    updateDoc.update(updates);

  }

  Future<Map> readFromDB(String childPath) async {
    var valueMap = new Map<String, dynamic>();
    await FirebaseDatabase.instance
        .reference()
        .child(childPath)
        .once()
        .then((DataSnapshot snapshot) {
      valueMap['data'] = snapshot.value;
    });
    return valueMap;
  }

  String getFlightIDKey(){
    var flightId = FirebaseDatabase.instance.reference().push().key;
    return flightId;
  }

}