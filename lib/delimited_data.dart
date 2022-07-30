import 'dart:io';
import 'package:facul/data.dart';

abstract class DelimitedData extends Data {
  String separator();

  late File _file;

  @override
  set data(String file) {
    String fileString = "";
    // _file.openSync(mode: FileMode.append).writeStringSync(file, encoding: utf8);
    var bufferFile = _file.readAsStringSync().split('\n');
    bufferFile.add(file);
    for (var element in bufferFile) {
      fileString += '$element\n';
    }
    _file.writeAsStringSync(fileString);
  }

  @override
  List<String> fields() {
    var listFile = data.split("\n");
    return listFile[0].split(separator());
  }
}
