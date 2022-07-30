import 'dart:io';

abstract class Data {
  late File file;

  void load(String fileName) {
    if(!fileName.contains('.json')) throw FormatException("Formato inválido");
    file = File(fileName);
  }

  void save(String fileName) => file.writeAsStringSync(fileName);

  void clear() => file = File(Platform.isWindows ? 'nul' : '/dev/null');

  bool hasData() => file.lengthSync() > 0;

  String get data => file.readAsStringSync();

  set data(String file);

  List<String> fields();
}
