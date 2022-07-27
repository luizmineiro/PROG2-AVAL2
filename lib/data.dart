import 'dart:io';

// ! Verificar a diferença entra load/save e get data/set data
abstract class Data {
  late final File _file;

  void load(String fileName) => _file = File(fileName);

  void save(String fileName) => _file.writeAsStringSync(fileName);

  void clear() => _file.writeAsStringSync('');

  bool hasData() => _file.lengthSync() > 0;

  String get data => _file.readAsStringSync(); // Funciona

  set data(value) => _file = File(value);

  List<String> fields() => data.split("\n");
}
