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
  set data(String input) {
    XmlDocument xmlFile = XmlDocument.parse(super.bufferFile);
    XmlName rootNodeName = xmlFile.rootElement.name;
    List xmlList = [];
    
    for (var element in xmlFile.rootElement.childElements.toList()) {
      xmlList.add(element.toString());
    }

    xmlList.add(input);

    String xmlOut = "";
    for (var element in xmlList) {
      xmlOut += "$element\n";
    }

    super.bufferFile = "<$rootNodeName>\n$xmlOut</$rootNodeName>";
  }

  @override
  List<String> fields() {
    XmlDocument xmlFile = XmlDocument.parse(super.file.readAsStringSync());
    List<String> xmlMap = [];

    var xmlRootList = xmlFile.rootElement.childElements.toList();

    for (var element in xmlRootList[0].childElements.toList()) {
      xmlMap.add(element.name.toString());
    }

    return xmlMap;
  }
}
