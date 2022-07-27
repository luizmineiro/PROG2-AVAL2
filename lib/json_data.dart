import 'dart:io';
import 'Data.dart';

class JsonData extends Data {
File ifile = File('sample.json');
@override
  void load(String fileName) {
    ifile = File(fileName);
  }
  void save(String fileName) {
    // TODO: implement save
  }
  void clear() {
    // TODO: implement clear
  }
  bool hasData() {
    // TODO: implement hasData
    throw UnimplementedError();
  }
  String idata() {
    String contents = ifile.readAsStringSync();
    return contents;
  }
  List<String> fields() {
    // TODO: implement fields
    throw UnimplementedError();
  }

}
