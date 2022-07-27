import 'dart:io';

// ! Verificar a diferença entra load/save e get data/set data
abstract class Data {
  late final File file;

  void load(String fileName) => file = File(fileName);

  void save(String fileName) => file.writeAsStringSync(fileName);

  void clear() => file.writeAsStringSync('');

  bool hasData() => file.lengthSync() > 0;

  String get data => file.readAsStringSync(); // Funciona

  set data(value) => file = File(value);

  List<String> fields() => data.split("\n");
}
