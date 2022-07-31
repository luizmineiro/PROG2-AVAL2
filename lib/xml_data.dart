import 'package:main/data.dart';
import 'package:xml/xml.dart';
import 'dart:io';

class XmlData extends Data {
  @override
  void load(String fileName) {
    if(!fileName.contains('.xml')) throw FormatException("Formato inválido");
    super.file = File(fileName);
    super.bufferFile = file.readAsStringSync();
  }

  @override
  set data (String input) { 
    super.bufferFile += input;
  }

  @override
  List<String> fields() {
    XmlDocument xmlFile = XmlDocument.parse(super.file.readAsStringSync());
    List<String> xmlMap = [];

    var xmlRootList = xmlFile.rootElement.descendantElements.toList();

    for (var element in xmlRootList[0].childElements.toList()) {
      xmlMap.add(element.name.toString());
    }

    return xmlMap;
  }
}
