import 'dart:io';

abstract class Data {
  late File file;
  late String bufferFile;

  void load(String fileName);

  void save() => file.writeAsStringSync(bufferFile);

  void clear() => file = File(Platform.isWindows ? 'nul' : '/dev/null');

  bool hasData() => file.lengthSync() > 0;

  String get data => bufferFile;

  set data(String file);

  List<String> fields();
}
