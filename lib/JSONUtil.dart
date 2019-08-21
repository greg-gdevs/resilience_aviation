import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class fileUtils {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> localFile(String targetFileName) async {
    final path = await _localPath;
    return File('$path/$targetFileName');
  }

  Future<void> writeFile(String content, String targetFileName) async {
    try {
      final file = await localFile(targetFileName);
      file.writeAsStringSync('$content');
    } catch (e) {
      print('Error: ${e}');
    }
  }

  Future<void> deleteFile(String fileName) async {
    try {
      final file = await localFile(fileName);
      await file.delete();
    } catch (e) {
      print('Error: ${e}');
    }

  }

  Future<void> writeImage(encoded, filename) async{
    filename = filename + '.png';
    try {
      final file = await localFile(filename);
      file.writeAsBytesSync(encoded);
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<bool> fileExist(String targetFileName) async {
    final file = await localFile(targetFileName);
    return file.existsSync();
  }

  Future<Map> readFile(String targetFileName) async {
    Map<String, dynamic> fileContents;
    // print('reading file');
    try {
      final mfile = await localFile(targetFileName);
      // Read the file
      fileContents = json.decode(mfile.readAsStringSync());
    } catch (e) {
      // If encountering an error, return 0
      print(e.toString());
    }
    return fileContents;
  }
}

class JSONUtil {
  final fileUtils storage = new fileUtils();

  Future<Map> readJSONFile(String targetFileName, [mapKey]) async {
    String fileName = targetFileName;
    var fileContent;
    Map returnData;
    fileContent = await storage.readFile(fileName);
    var targetKey = mapKey;
    if (targetKey != null) {
      returnData = fileContent[targetKey];
    } else {
      returnData = fileContent;
    }
    if(fileContent == null){
      returnData = {};
    }

    return returnData;
  }

  Future<void> clearJsonFile(String targetFileName) async {
    String fileName = targetFileName;
    if (await storage.fileExist(fileName) == true) {
      var emptyMap = new Map();
      storage.writeFile(json.encode(emptyMap), fileName);
    } else {
      print("File does not exist!");
    }
  }

  Future<bool> keyExist(Map mapData, String fileName, String dataKey) async {
    bool flag;
    var JSONData = await readJSONFile(fileName);
    if (JSONData.containsKey(dataKey)) {
      flag = true;
    } else {
      flag = false;
    }
    return flag;
  }

  Future<bool> writeJSON(Map mapData, String fileName, [mapKey]) async {
    bool flag = true;
    //await clearJsonFile('');
    var targetKey = mapKey;
    //print(targetKey);
    Map JSONData = await readJSONFile(fileName);
    if (JSONData == null){
        JSONData.clear();
   }
    //var newJSON = new Map();
    if (targetKey != null) {
      //print('fire');
      JSONData[targetKey] = mapData;
    } else {
      JSONData = mapData;
    }
    // print(JSONData);
    await clearJsonFile(fileName);
    storage.writeFile(json.encode(JSONData), fileName);
    //writeToFile(JSONData, '');
    return flag;
  }
}