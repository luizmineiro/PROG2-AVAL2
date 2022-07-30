import 'package:main/data.dart';
import 'package:xml/xml.dart';

class XmlData extends Data {
  @override
  set data (String file) { 
    var xmlFile = XmlDocument.parse(file);
    var xmlString = xmlFile.toString();
    super.file.writeAsStringSync(xmlString);
  }

  @override
  List<String> fields() {
    XmlDocument xmlFile = XmlDocument.parse(super.file.readAsStringSync());
    List<String> xmlMap = [];

    for (var element in xmlFile.rootElement.childElements) {
      xmlMap.add(element.name.toString());
    }
    
    return xmlMap;
  }
}
