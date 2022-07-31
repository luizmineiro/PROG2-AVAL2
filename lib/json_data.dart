import 'package:main/data.dart';
import 'dart:convert';
import 'dart:io';

class JsonData extends Data {
  @override
  void load(String fileName) {
    if(!fileName.contains('.json')) throw FormatException("Formato inválido");
    super.file = File(fileName);
    super.bufferFile = file.readAsStringSync();
  }

  @override
  set data (String input) {
    super.bufferFile += ",\n$input";
  }

  @override
  List<String> fields() {
    List jsonFile = json.decode(super.file.readAsStringSync());
    List<String> jsonMap = [];

    for (var key in jsonFile[0].keys) {
      jsonMap.add(key);
    }
    
    return jsonMap;
  }
}
