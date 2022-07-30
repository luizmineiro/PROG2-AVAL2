import 'package:facul/data.dart';
import 'package:xml/xml.dart';
import 'dart:io';

class XmlData extends Data {
  late File _file;

  @override void load(String fileName) => _file = File(fileName);

  @override
  set data (String file) { 
    var xmlFile = XmlDocument.parse(file);
    var xmlString = xmlFile.toString();
    _file.writeAsStringSync(xmlString);
  }

  @override
  List<String> fields() {
    XmlDocument xmlFile = XmlDocument.parse(_file.readAsStringSync());
    List<String> xmlMap = [];
    for (var element in xmlFile.rootElement.childElements) {
      xmlMap.add(element.name.toString());
    }
    
    return xmlMap;
  }
}
