import 'dart:convert';
import 'package:main/data.dart';

class JsonData extends Data {
  @override
  set data (String file) {
    var jsonFile = json.decode(file);
    var jsonString = json.encode(jsonFile);
    super.file.writeAsStringSync(jsonString);
  }

  @override
  List<String> fields() {
    Map jsonFile = json.decode(super.file.readAsStringSync());
    List<String> jsonMap = [];

    for (var key in jsonFile.keys) {
      jsonMap.add(key);
    }
    
    return jsonMap;
  }
}
