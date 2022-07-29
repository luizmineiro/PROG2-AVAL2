import 'dart:io';

// ! Verificar a diferença entra load/save e get data/set data
abstract class Data {
  late File _file;

  void load(String fileName) => _file = File(fileName);

  void save(String fileName) => _file.writeAsStringSync(fileName);

  void clear() => _file = File('/dev/null');

  bool hasData() => _file.lengthSync() > 0;

  String get data => _file.readAsStringSync();

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

  List<String> fields() => data[0].split("\t");
}
