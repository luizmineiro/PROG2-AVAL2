import 'dart:convert';
import 'dart:io';
import 'package:facul/data.dart';

class JsonData extends Data {
  late File _file;

  // ! Verificar porque o load precisa ser instanciado novamenet
  @override void load(String fileName) => _file = File(fileName);

  @override
  set data (String file) {
    var jsonFile = json.decode(file);
    var jsonString = json.encode(jsonFile);
    _file.writeAsStringSync(jsonString);
  }

  @override
  List<String> fields() {
    Map jsonFile = json.decode(_file.readAsStringSync());
    List<String> jsonMap = [];
    for (var key in jsonFile.keys) {
      jsonMap.add(key);
    }
    
    return jsonMap;
  }
}
