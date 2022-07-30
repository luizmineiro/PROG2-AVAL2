import 'dart:io';

// ! Verificar a diferença entra load/save e get data/set data
abstract class Data {
  late File _file;

  void load(String fileName) => _file = File(fileName);

  void save(String fileName) => _file.writeAsStringSync(fileName);

  void clear() => _file = File(Platform.isWindows ? 'nul' : '/dev/null');

  bool hasData() => _file.lengthSync() > 0;

  String get data => _file.readAsStringSync();

  set data(String file);

  List<String> fields();
}
