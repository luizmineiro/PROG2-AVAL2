import 'package:facul/data.dart';

class XmlData extends Data {
  XmlData(String fileName) : super() {
    load(fileName);
  }
}
